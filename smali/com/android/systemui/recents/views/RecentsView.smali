.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mBackgroundScrim:Landroid/graphics/drawable/Drawable;

.field private mBackgroundScrimAnimator:Landroid/animation/Animator;

.field private mDividerSize:I

.field private mEmptyView:Landroid/widget/TextView;

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mLastTaskLaunchedWasFreeform:Z

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mStackActionButton:Landroid/widget/TextView;

.field mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 108
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 111
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 112
    const/16 v3, 0x54

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 111
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 136
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 137
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v2, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 138
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    .line 139
    new-instance v2, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    .line 140
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 144
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400cd

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 146
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 154
    const v2, 0x7f0400c9

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method private animateBackgroundScrim(FI)V
    .locals 6
    .param p1, "alpha"    # F
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 773
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 775
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x42a84ccd    # 84.15f

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 776
    .local v0, "fromAlpha":I
    mul-float v2, p1, v4

    float-to-int v1, v2

    .line 777
    .local v1, "toAlpha":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 778
    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 777
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    .line 779
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 780
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    if-le v1, v0, :cond_0

    .line 781
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 780
    :goto_0
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 783
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 772
    return-void

    .line 782
    :cond_0
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 790
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 791
    .local v0, "actionButtonRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 792
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 795
    .local v1, "left":I
    :goto_0
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 796
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 795
    add-int v2, v3, v4

    .line 797
    .local v2, "top":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 798
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 797
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 799
    return-object v0

    .line 793
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 794
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 793
    sub-int v1, v3, v4

    .restart local v1    # "left":I
    goto :goto_0
.end method

.method private getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 577
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v0

    .line 578
    .local v0, "location":[I
    const/4 v3, 0x0

    aget v1, v0, v3

    .line 579
    .local v1, "viewX":I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 580
    .local v2, "viewY":I
    new-instance v3, Landroid/graphics/Rect;

    .line 581
    int-to-float v4, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 582
    int-to-float v5, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 580
    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private hideStackActionButton(IZ)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    .line 694
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 695
    .local v0, "postAnimationTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 696
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 689
    return-void
.end method

.method private hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 4
    .param p1, "duration"    # I
    .param p2, "translate"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 709
    if-eqz p2, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    .line 710
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 714
    const/4 v1, 0x0

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 715
    int-to-long v2, p1

    .line 713
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 716
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 717
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$8;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/RecentsView$8;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 725
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 703
    :cond_1
    return-void
.end method

.method private showStackActionButton(IZ)V
    .locals 4
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 659
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 660
    .local v0, "postAnimationTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 663
    if-eqz p2, :cond_1

    .line 664
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 668
    :goto_0
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/recents/views/RecentsView$7;-><init>(Lcom/android/systemui/recents/views/RecentsView;ZI)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 683
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 654
    return-void

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V
    .locals 16
    .param p1, "newDockStates"    # [Lcom/android/systemui/recents/model/TaskStack$DockState;
    .param p2, "isDefaultDockState"    # Z
    .param p3, "overrideAreaAlpha"    # I
    .param p4, "overrideHintAlpha"    # I
    .param p5, "animateAlpha"    # Z
    .param p6, "animateBounds"    # Z

    .prologue
    .line 736
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 735
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/systemui/recents/misc/Utilities;->arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v14

    .line 737
    .local v14, "newDockStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v15

    .line 738
    .local v15, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_5

    .line 739
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 740
    .local v2, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    iget-object v1, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 741
    .local v1, "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    if-eqz p1, :cond_1

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 747
    const/4 v3, -0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_2

    .line 748
    move/from16 v11, p3

    .line 750
    .local v11, "areaAlpha":I
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_3

    .line 751
    move/from16 v12, p4

    .line 753
    .local v12, "hintAlpha":I
    :goto_2
    if-eqz p2, :cond_4

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v5

    .line 755
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 754
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getPreDockedBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 758
    .local v4, "bounds":Landroid/graphics/Rect;
    :goto_3
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_0

    .line 759
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 760
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 763
    :cond_0
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v7, 0xfa

    move-object v3, v1

    move v5, v11

    move v6, v12

    move/from16 v9, p5

    move/from16 v10, p6

    .line 762
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    .line 738
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :goto_4
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 744
    .restart local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_1
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 743
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    goto :goto_4

    .line 749
    :cond_2
    iget v11, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .restart local v11    # "areaAlpha":I
    goto :goto_1

    .line 752
    :cond_3
    iget v12, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .restart local v12    # "hintAlpha":I
    goto :goto_2

    .line 756
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v4

    .line 757
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 756
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v4

    .restart local v4    # "bounds":Landroid/graphics/Rect;
    goto :goto_3

    .line 734
    .end local v1    # "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :cond_5
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "RecentsView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 807
    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    const-string/jumbo v2, " insets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 812
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v2, :cond_0

    .line 813
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/model/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 815
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 802
    :cond_1
    return-void

    .line 807
    :cond_2
    const-string/jumbo v2, "N"

    goto :goto_0
.end method

.method public getBackgroundScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hideEmptyView()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->bringToFront()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    return-void
.end method

.method public isLastTaskLaunchedFreeform()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    return v0
.end method

.method public launchFocusedTask(I)Z
    .locals 7
    .param p1, "logEvent"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 237
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 239
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 240
    const/4 v4, -0x1

    .line 239
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    iget-object v3, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v0, p1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 246
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 249
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return v5
.end method

.method public launchPreviousTask()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 256
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 257
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 259
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 260
    const/4 v4, -0x1

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 261
    const/4 v0, 0x1

    return v0

    .line 264
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_0
    return v5
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 409
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 319
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 320
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 321
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 318
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 457
    const/16 v0, 0xc8

    .line 460
    .local v0, "taskViewExitToHomeDuration":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 462
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 456
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    .line 611
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 612
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 614
    const/high16 v1, 0x3f800000    # 1.0f

    .line 615
    const/16 v2, 0x12c

    .line 614
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    .prologue
    .line 644
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 639
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    .line 451
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 452
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 453
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    .line 452
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;I)V

    .line 450
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    .line 648
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 647
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    .prologue
    .line 636
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;->translate:Z

    const/16 v1, 0x86

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->showStackActionButton(IZ)V

    .line 631
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 620
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 619
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 624
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 625
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 623
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    .prologue
    const/4 v4, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 593
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 595
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$6;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 601
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    .line 607
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 591
    return-void

    .line 603
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 604
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 605
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    .prologue
    const/4 v2, 0x0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 587
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;->distanceFromTop:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v0

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 585
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 482
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_1

    .line 488
    iget-object v10, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v10, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 489
    .local v10, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    new-array v4, v2, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v10, v4, v5

    move-object v3, p0

    move v7, v6

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 493
    .end local v10    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 481
    :cond_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 484
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 485
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    move-object v0, p0

    move v5, v2

    move v6, v2

    .line 483
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 572
    const/4 v1, 0x0

    .line 573
    const/4 v6, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v2

    .line 572
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 570
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    .line 508
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_2

    .line 509
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v7, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 512
    .local v7, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 513
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 512
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 517
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 520
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    .line 521
    .local v9, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v1, v7, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    invoke-virtual {v9, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v10, p0, p1}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    .line 534
    .local v10, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v11

    .line 536
    .local v11, "taskRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 537
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$5;

    invoke-direct {v1, p0, p1, v11}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V

    .line 536
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v8

    .line 545
    .local v8, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 546
    const/4 v1, 0x1

    .line 544
    invoke-virtual {v9, v8, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    .line 549
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 548
    const/16 v2, 0x10e

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 561
    .end local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v8    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v10    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v11    # "taskRect":Landroid/graphics/Rect;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 563
    const/high16 v1, 0x3f800000    # 1.0f

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 564
    const-wide/16 v2, 0x86

    .line 562
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 565
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 506
    :cond_0
    return-void

    .line 551
    .restart local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .restart local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 552
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 551
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 556
    .end local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v9    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 557
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 556
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v2, 0x1

    .line 466
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 467
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 468
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .line 469
    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    .line 466
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 474
    const/4 v1, 0x0

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 475
    const-wide/16 v2, 0x64

    .line 473
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 476
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 465
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 327
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 430
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v1

    .line 431
    .local v1, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 432
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v2, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->draw(Landroid/graphics/Canvas;)V

    .line 431
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 365
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 366
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v11

    add-int v11, v11, p2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v12

    add-int v12, v12, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 370
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 371
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v8, v10, v11

    .line 372
    .local v8, "leftRightInsets":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 373
    .local v9, "topBottomInsets":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 374
    .local v6, "childWidth":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 375
    .local v3, "childHeight":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int v10, v10, p2

    .line 376
    sub-int v11, p4, p2

    sub-int/2addr v11, v8

    sub-int/2addr v11, v6

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 375
    add-int v4, v10, v11

    .line 377
    .local v4, "childLeft":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v10, v10, p3

    .line 378
    sub-int v11, p5, p3

    sub-int/2addr v11, v9

    sub-int/2addr v11, v3

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 377
    add-int v5, v10, v11

    .line 379
    .local v5, "childTop":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int v11, v4, v6

    add-int v12, v5, v3

    invoke-virtual {v10, v4, v5, v11, v12}, Landroid/widget/TextView;->layout(IIII)V

    .line 385
    .end local v3    # "childHeight":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v8    # "leftRightInsets":I
    .end local v9    # "topBottomInsets":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v2

    .line 386
    .local v2, "buttonBounds":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    .line 387
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    .line 386
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->layout(IIII)V

    .line 390
    iget-boolean v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v10, :cond_2

    .line 391
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 395
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v7

    .line 396
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v10, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    if-eqz v10, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 364
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_2
    :goto_0
    return-void

    .line 399
    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v4, 0x8

    const/high16 v6, -0x80000000

    .line 336
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 337
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 339
    .local v1, "height":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 345
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 346
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 345
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 351
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    .line 352
    .local v0, "buttonBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    .line 353
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 354
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 352
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 357
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 335
    return-void
.end method

.method public onReload(ZZ)V
    .locals 5
    .param p1, "isResumingFromVisible"    # Z
    .param p2, "isTaskStackEmpty"    # Z

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 163
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 165
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-nez v2, :cond_0

    .line 166
    const/4 p1, 0x0

    .line 167
    .local p1, "isResumingFromVisible":Z
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 173
    .end local p1    # "isResumingFromVisible":Z
    :cond_0
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 174
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 177
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReload(Z)V

    .line 179
    if-eqz p1, :cond_2

    .line 181
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 161
    :goto_1
    return-void

    .line 173
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_4

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 190
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    return v0

    .line 422
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showEmptyView(I)V
    .locals 2
    .param p1, "msgResId"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 296
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method

.method public updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "setStackViewTasks"    # Z

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 200
    if-eqz p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hideEmptyView()V

    .line 198
    :goto_0
    return-void

    .line 208
    :cond_1
    const v0, 0x7f0f02d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 438
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v2

    .line 439
    .local v2, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 440
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v3, v3, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget-object v0, v3, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 441
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-ne v0, p1, :cond_0

    .line 442
    const/4 v3, 0x1

    return v3

    .line 439
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 445
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    return v3
.end method
