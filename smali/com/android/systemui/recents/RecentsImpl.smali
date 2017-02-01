.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mStatusBarHeight:I

.field mTaskBarHeight:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field protected mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 143
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 151
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 157
    new-instance v2, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v3, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v4, 0xe1

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 171
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 172
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 178
    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    .line 179
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 180
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 185
    const v2, 0x7f0400cf

    .line 186
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 185
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 170
    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    .line 657
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 660
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 661
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 664
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 665
    .local v2, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 666
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 667
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 668
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 669
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 656
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 562
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 563
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 564
    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 783
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 784
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_2

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_2

    .line 785
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    .line 786
    :try_start_0
    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    .line 787
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 788
    iget-object v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    .line 787
    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 792
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 793
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 796
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 797
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 798
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 800
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 802
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 803
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 804
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 805
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 808
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 786
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    .local v1, "disabledInSafeMode":Z
    goto :goto_0

    .line 785
    .end local v1    # "disabledInSafeMode":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 810
    :cond_2
    return-object v5
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 23
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 710
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    .line 711
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v15, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v18

    .line 713
    .local v18, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    .line 714
    .local v4, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    .line 716
    .local v17, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 719
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v14, v6, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_1

    .line 720
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    .line 721
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 723
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    move-object/from16 v9, p3

    .line 722
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 725
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 726
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 725
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v8}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 727
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 728
    .local v20, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 729
    new-instance v6, Landroid/view/AppTransitionAnimationSpec;

    iget-object v8, v5, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v8, v8, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v20

    invoke-direct {v6, v8, v7, v0}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v20    # "toTaskRect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 732
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v16, v0

    .line 733
    .local v16, "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 734
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 735
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    .line 734
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v6, v0, v8, v9, v1}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    return-object v6

    .line 738
    .end local v4    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v14    # "i":I
    .end local v15    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v16    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .end local v17    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v18    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    new-instance v19, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 739
    .local v19, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v22

    .line 742
    .local v22, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 741
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 743
    .restart local v7    # "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_3

    .line 744
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    .line 745
    .local v21, "toTaskRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 746
    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    move-object/from16 v0, v21

    iget v9, v0, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    .line 747
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    .line 745
    invoke-static/range {v6 .. v13}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    return-object v6

    .line 750
    .end local v21    # "toTaskRect":Landroid/graphics/RectF;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    return-object v6
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 760
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 761
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 762
    .local v1, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 771
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 772
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 773
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 774
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    .line 773
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 775
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    .line 766
    :cond_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 767
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "growTarget"    # I

    .prologue
    .line 894
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 895
    const/4 v0, 0x0

    return-object v0

    .line 897
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 898
    .local v2, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 900
    .local v6, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 901
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    .line 899
    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 902
    return-object v2
.end method

.method private preloadIcon(I)V
    .locals 4
    .param p1, "runningTaskId"    # I

    .prologue
    .line 677
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 678
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 679
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 680
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 681
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 675
    return-void
.end method

.method private reloadResources()V
    .locals 8

    .prologue
    const v4, 0x7f100243

    const v1, 0x7f100242

    .line 571
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 574
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x1050019

    .line 573
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mStatusBarHeight:I

    .line 576
    const v0, 0x105001a

    .line 575
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarHeight:I

    .line 578
    const v0, 0x105001c

    .line 577
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarWidth:I

    .line 579
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 570
    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 910
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 915
    if-eqz p1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 920
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 908
    return-void

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    const/4 v11, 0x0

    .line 598
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 599
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 600
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 601
    .local v8, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 602
    if-eqz p2, :cond_5

    .line 603
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 608
    .local v2, "windowRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 610
    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 612
    :cond_0
    invoke-direct {p0, v8, v2}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 613
    invoke-virtual {v2, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 615
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 618
    .local v0, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 619
    if-eqz p1, :cond_4

    .line 620
    iget v3, v8, Landroid/graphics/Rect;->top:I

    .line 621
    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 620
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 622
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 623
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 624
    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 623
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 625
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 627
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 628
    .local v9, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 629
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 630
    .local v10, "taskViewWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    .line 631
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v10, :cond_1

    .line 632
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v5, :cond_2

    .line 633
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    .line 634
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 635
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 636
    iget v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 634
    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 638
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v11, v10, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 642
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 643
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v10, :cond_6

    .line 646
    :cond_3
    :goto_1
    iget v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 645
    invoke-static {v10, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 597
    .end local v9    # "taskViewBounds":Landroid/graphics/Rect;
    .end local v10    # "taskViewWidth":I
    :cond_4
    return-void

    .line 604
    .end local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v2    # "windowRect":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2    # "windowRect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 630
    .restart local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v9    # "taskViewBounds":Landroid/graphics/Rect;
    .restart local v10    # "taskViewWidth":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 644
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v4, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 542
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 546
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v7, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 550
    if-nez p2, :cond_1

    move v2, v4

    .line 554
    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    .line 548
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 541
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 550
    goto :goto_0
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 701
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 699
    const v2, 0x7f0500ae

    .line 700
    const v3, 0x7f0500af

    .line 701
    const/4 v4, 0x0

    .line 698
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 691
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 689
    const v2, 0x7f0500b0

    .line 690
    const v3, 0x7f0500b1

    .line 691
    const/4 v4, 0x0

    .line 688
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 281
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 288
    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 280
    return-void
.end method

.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 927
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 926
    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    .prologue
    .line 193
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 194
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 195
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 196
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 197
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 198
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 199
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 200
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 190
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 204
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutDirection(I)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 213
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 214
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 203
    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 2
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 393
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 392
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 397
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 396
    return-void
.end method

.method public onShowCurrentUserToast(II)V
    .locals 1
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 400
    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .prologue
    move-object v0, p1

    .line 232
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 233
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 234
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(IZ)V

    .line 231
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 223
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    .line 222
    return-void
.end method

.method public preloadRecents()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 366
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 367
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 368
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 369
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 370
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 371
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 372
    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 373
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget v8, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-boolean v9, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v9, :cond_2

    :goto_1
    invoke-virtual {v1, v5, v8, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 374
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 375
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 378
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 383
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 363
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_0
    return-void

    .restart local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    move v5, v7

    .line 372
    goto :goto_0

    :cond_2
    move v6, v7

    .line 373
    goto :goto_1
.end method

.method public showNextAffiliatedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 530
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 531
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 528
    return-void
.end method

.method public showNextTask()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 408
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 409
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 410
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 411
    .local v5, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 412
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    .line 415
    .local v0, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    .line 418
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 419
    .local v6, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v6, :cond_2

    return-void

    .line 422
    :cond_2
    iget v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v2

    .line 423
    .local v2, "isRunningTaskInHomeStack":Z
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 424
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v11, 0x0

    .line 425
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v3, 0x0

    .line 426
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 427
    .local v9, "taskCount":I
    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v12, 0x1

    if-lt v1, v12, :cond_3

    .line 428
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 429
    .local v8, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_4

    .line 430
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 431
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 432
    const v13, 0x7f0500b4

    .line 433
    const v14, 0x7f0500ad

    .line 431
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 445
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    :goto_1
    if-nez v11, :cond_6

    .line 447
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 448
    const v13, 0x7f0500b5

    .line 447
    invoke-static {v12, v13}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 446
    invoke-virtual {v7, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 449
    return-void

    .line 435
    .restart local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_5

    .line 436
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 437
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 438
    const v13, 0x7f0500b7

    .line 439
    const v14, 0x7f0500b6

    .line 437
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 427
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 453
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v14, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 407
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 534
    return-void
.end method

.method public showRecents(ZZZZZI)V
    .locals 7
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "launchedWhileDockingTask"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 243
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 244
    iput-boolean p4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 245
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 267
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 268
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez p4, :cond_4

    move v1, p2

    .line 269
    :goto_1
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 270
    .local v2, "isHomeStackVisible":Landroid/util/MutableBoolean;
    if-nez v1, :cond_5

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    .line 241
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local p5    # "fromHome":Z
    :goto_2
    return-void

    .line 248
    .restart local p5    # "fromHome":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 254
    if-nez p1, :cond_2

    .line 255
    return-void

    .line 257
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    .line 258
    :cond_3
    if-eqz p1, :cond_0

    .line 261
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 262
    return-void

    .line 268
    .restart local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_4
    const/4 v1, 0x1

    .local v1, "forceVisible":Z
    goto :goto_1

    .line 271
    .end local v1    # "forceVisible":Z
    .restart local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 272
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v5, v2, Landroid/util/MutableBoolean;->value:Z

    if-nez v5, :cond_6

    .end local p5    # "fromHome":Z
    :goto_3
    invoke-virtual {p0, v3, p5, p3, p6}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 275
    .end local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "RecentsImpl"

    const-string/jumbo v6, "Failed to launch RecentsActivity"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 272
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v3    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local p5    # "fromHome":Z
    :cond_6
    const/4 p5, 0x1

    goto :goto_3
.end method

.method public showRelativeAffiliatedTask(Z)V
    .locals 20
    .param p1, "showNextTask"    # Z

    .prologue
    .line 460
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    .line 461
    .local v11, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 462
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 463
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v9, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 464
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 467
    .local v3, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 471
    .local v10, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v10, :cond_2

    return-void

    .line 473
    :cond_2
    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v17

    if-eqz v17, :cond_3

    return-void

    .line 476
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v14

    .line 477
    .local v14, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v15, 0x0

    .line 478
    .local v15, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v6, 0x0

    .line 479
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 480
    .local v13, "taskCount":I
    const/4 v8, 0x0

    .line 481
    .local v8, "numAffiliatedTasks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_5

    .line 482
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    .line 483
    .local v12, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 484
    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 486
    .local v4, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_7

    .line 487
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 488
    .local v16, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 489
    const v18, 0x7f0500b4

    .line 490
    const v19, 0x7f0500b3

    .line 488
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 497
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :goto_1
    if-eqz v16, :cond_4

    .line 498
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 500
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 506
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_5
    if-nez v15, :cond_a

    .line 507
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 508
    if-eqz p1, :cond_9

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 511
    const v18, 0x7f0500b2

    .line 510
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 509
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 518
    :cond_6
    :goto_2
    return-void

    .line 492
    .restart local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_7
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 493
    .restart local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 494
    const v18, 0x7f0500b7

    .line 495
    const v19, 0x7f0500b6

    .line 493
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 481
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 514
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 515
    const v18, 0x7f0500b5

    .line 514
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 513
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 522
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "overview_affiliated_task_launch"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 459
    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 16
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I

    .prologue
    .line 818
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    .line 819
    .local v5, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v4

    .line 820
    .local v4, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 821
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_5

    .line 822
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isBlackListedActivity(Ljava/lang/String;)Z

    move-result v3

    .line 825
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_0

    if-eqz v3, :cond_6

    .line 827
    :cond_0
    const/4 v7, -0x1

    .line 832
    .local v7, "runningTaskId":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v13, :cond_1

    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v13, :cond_2

    .line 834
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v13

    sput-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 836
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v13, :cond_7

    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 840
    :goto_2
    sget-object v13, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v9

    .line 841
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v13

    if-lez v13, :cond_9

    const/4 v2, 0x1

    .line 842
    .local v2, "hasRecentTasks":Z
    :goto_3
    if-eqz p1, :cond_3

    if-eqz p2, :cond_a

    :cond_3
    const/4 v11, 0x0

    .line 846
    .local v11, "useThumbnailTransition":Z
    :goto_4
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-eqz v13, :cond_b

    :cond_4
    const/4 v13, 0x0

    :goto_5
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 847
    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    :goto_6
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 848
    iget-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v13, :cond_d

    move v13, v3

    :goto_7
    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    .line 849
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 850
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 851
    iput v7, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 852
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 856
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 859
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v12

    .line 860
    .local v12, "windowOverrideRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 867
    .local v10, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    iget v13, v10, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 868
    iget v13, v10, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v13, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 870
    if-nez p3, :cond_e

    .line 871
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v13, v14, v15}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 872
    return-void

    .line 823
    .end local v2    # "hasRecentTasks":Z
    .end local v7    # "runningTaskId":I
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .end local v11    # "useThumbnailTransition":Z
    .end local v12    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    .local v3, "isBlacklisted":Z
    goto/16 :goto_0

    .line 825
    .end local v3    # "isBlacklisted":Z
    :cond_6
    if-eqz p1, :cond_0

    .line 826
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .restart local v7    # "runningTaskId":I
    goto/16 :goto_1

    .line 837
    :cond_7
    sget-object v14, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz p2, :cond_8

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v5, v14, v7, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto/16 :goto_2

    :cond_8
    const/4 v13, 0x1

    goto :goto_8

    .line 841
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "hasRecentTasks":Z
    goto :goto_3

    :cond_a
    move v11, v2

    .line 843
    goto :goto_4

    .line 846
    .restart local v11    # "useThumbnailTransition":Z
    :cond_b
    const/4 v13, 0x1

    goto :goto_5

    .line 847
    :cond_c
    const/4 v13, 0x1

    goto :goto_6

    .line 848
    :cond_d
    const/4 v13, 0x0

    goto :goto_7

    .line 876
    .restart local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .restart local v12    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_e
    if-eqz v3, :cond_f

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 889
    .local v6, "opts":Landroid/app/ActivityOptions;
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 890
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 817
    return-void

    .line 878
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_f
    if-eqz v11, :cond_10

    .line 880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v12}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v6

    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    goto :goto_9

    .line 885
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_10
    if-eqz v2, :cond_11

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    goto :goto_9

    .line 887
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    goto :goto_9
.end method

.method public toggleRecents(I)V
    .locals 14
    .param p1, "growTarget"    # I

    .prologue
    .line 299
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 300
    return-void

    .line 303
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 304
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 305
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 308
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 309
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v9, 0x1

    invoke-direct {v3, v9}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 310
    .local v3, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v4, v10, v12

    .line 312
    .local v4, "elapsedTime":J
    invoke-virtual {v8, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 313
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    .line 314
    .local v1, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 315
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    .line 316
    .local v6, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v9, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v9, :cond_3

    .line 318
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 319
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v10, v4

    if-gez v9, :cond_2

    .line 320
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v4, v10

    if-gez v9, :cond_2

    .line 322
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v10}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 339
    :goto_0
    return-void

    .line 325
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v10}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v4    # "elapsedTime":J
    .end local v6    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v8    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v9, "RecentsImpl"

    const-string/jumbo v10, "Failed to launch RecentsActivity"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void

    .line 332
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .restart local v3    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .restart local v8    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    const-wide/16 v10, 0x15e

    cmp-long v9, v4, v10

    if-gez v9, :cond_4

    .line 333
    return-void

    .line 336
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v10}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_0

    .line 345
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v6    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_5
    const-wide/16 v10, 0x15e

    cmp-long v9, v4, v10

    if-gez v9, :cond_6

    .line 346
    return-void

    .line 350
    :cond_6
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    .line 351
    .local v7, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v9, v3, Landroid/util/MutableBoolean;->value:Z

    const/4 v10, 0x1

    invoke-virtual {p0, v7, v9, v10, p1}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    .line 355
    const-string/jumbo v9, "recentapps"

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
