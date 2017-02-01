.class public Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# instance fields
.field private mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mDownPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragRequested:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragSlop:F

.field private mDragTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task"
    .end annotation
.end field

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mRv:Lcom/android/systemui/recents/views/RecentsView;

.field private mTaskView:Lcom/android/systemui/recents/views/TaskView;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task_view_"
    .end annotation
.end field

.field private mTaskViewOffset:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mVisibleDockStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1
    .param p1, "rv"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    .line 92
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    .line 90
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    .line 207
    .local v9, "action":I
    packed-switch v9, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 213
    .local v12, "evX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 214
    .local v13, "evY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v15, v12, v3

    .line 215
    .local v15, "x":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v16, v13, v3

    .line 217
    .local v16, "y":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-nez v3, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, v12, v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, v13, v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    float-to-double v0, v3

    move-wide/from16 v20, v0

    cmpl-double v3, v18, v20

    if-lez v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-eqz v3, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    .line 223
    .local v5, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    .line 225
    .local v6, "height":I
    const/4 v11, 0x0

    .line 228
    .local v11, "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v3, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    float-to-int v3, v12

    float-to-int v4, v13

    .line 230
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v8, 0x1

    .line 229
    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 236
    .end local v11    # "currentDropTarget":Lcom/android/systemui/recents/views/DropTarget;
    :cond_2
    if-nez v11, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "target$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DropTarget;

    .line 238
    .local v2, "target":Lcom/android/systemui/recents/views/DropTarget;
    float-to-int v3, v12

    float-to-int v4, v13

    .line 239
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v7, v7, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    const/4 v8, 0x0

    .line 238
    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    move-object v11, v2

    .line 245
    .end local v2    # "target":Lcom/android/systemui/recents/views/DropTarget;
    .end local v14    # "target$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eq v3, v11, :cond_5

    .line 246
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 247
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v7, v11}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 253
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 219
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 260
    .end local v12    # "evX":F
    .end local v13    # "evY":F
    .end local v15    # "x":F
    .end local v16    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_0

    .line 261
    const/4 v3, 0x3

    if-ne v9, v3, :cond_8

    const/4 v10, 0x1

    .line 262
    .local v10, "cancelled":Z
    :goto_2
    if-eqz v10, :cond_7

    .line 263
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 265
    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v17, v0

    .line 266
    if-nez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 265
    :goto_3
    move-object/from16 v0, v17

    invoke-direct {v7, v8, v0, v3}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0

    .line 261
    .end local v10    # "cancelled":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 266
    .restart local v10    # "cancelled":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSnapAlgorithm()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 96
    return-void
.end method


# virtual methods
.method public getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;
    .locals 4

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 114
    const/4 v3, 0x2

    .line 113
    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 115
    .local v1, "isLandscape":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 116
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v2, :cond_2

    .line 117
    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/recents/views/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_1
    return-object v2

    .line 113
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "isLandscape":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isLandscape":Z
    goto :goto_0

    .line 117
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    :cond_1
    sget-object v2, Lcom/android/systemui/recents/views/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    .line 119
    :cond_2
    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/systemui/recents/views/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_2
    return-object v2

    :cond_3
    sget-object v2, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_2
.end method

.method public getVisibleDockStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 197
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    .line 196
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    .line 191
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    .line 192
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 193
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 186
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 145
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 146
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 147
    iput-boolean v10, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    .line 149
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    .line 150
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    .line 151
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 152
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 154
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 155
    .local v2, "recentsViewLocation":[I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7, v2}, Lcom/android/systemui/recents/views/RecentsView;->getLocationInWindow([I)V

    .line 156
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v8

    aget v9, v2, v6

    sub-int/2addr v8, v9

    iget-object v9, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    .line 157
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v9

    aget v10, v2, v10

    sub-int/2addr v9, v10

    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    .line 156
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->set(II)V

    .line 158
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-float v4, v7

    .line 159
    .local v4, "x":F
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-float v5, v7

    .line 160
    .local v5, "y":F
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7, v4}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 161
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7, v5}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    .line 163
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 164
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 182
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 183
    iget-object v9, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 182
    invoke-direct {v7, v8, v9, p0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/RecentsViewTouchHandler;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 144
    return-void

    .line 165
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v7

    .line 164
    if-eqz v7, :cond_0

    .line 166
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 167
    iget-object v9, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget v9, v9, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    .line 166
    invoke-static {v7, v8, v9}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 168
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v7, v7, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v7, :cond_2

    .line 169
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    invoke-direct {v7}, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 173
    .local v1, "dockStates":[Lcom/android/systemui/recents/model/TaskStack$DockState;
    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 174
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 175
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;->update(Landroid/content/Context;)V

    .line 176
    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    return v0
.end method

.method public registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/systemui/recents/views/DropTarget;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method
