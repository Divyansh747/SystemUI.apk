.class public final Lcom/android/systemui/qs/SignalTileView;
.super Lcom/android/systemui/qs/QSIconView;
.source "SignalTileView.java"


# static fields
.field private static final DEFAULT_DURATION:J

.field private static final SHORT_DURATION:J


# instance fields
.field private mIconFrame:Landroid/widget/FrameLayout;

.field private mIn:Landroid/widget/ImageView;

.field private mOut:Landroid/widget/ImageView;

.field private mOverlay:Landroid/widget/ImageView;

.field private mRoaming:Landroid/widget/ImageView;

.field private mSignal:Landroid/widget/ImageView;

.field private mWideOverlayIconStartPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    .line 34
    sget-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSIconView;-><init>(Landroid/content/Context;)V

    .line 48
    const v0, 0x7f020106

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f02010a

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const v1, 0x7f1001f8

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    .line 45
    return-void
.end method

.method private addTrafficView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "icon"    # I

    .prologue
    .line 56
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "traffic":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addView(Landroid/view/View;)V

    .line 60
    return-object v0
.end method

.method private layoutIndicator(Landroid/view/View;)V
    .locals 5
    .param p1, "indicator"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 113
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 114
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    .line 115
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v1, v2, v3

    .line 122
    .local v1, "left":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 124
    iget-object v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    .line 120
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 110
    return-void

    .line 111
    .end local v0    # "isRtl":Z
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    .restart local v0    # "isRtl":Z
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    .line 118
    .restart local v1    # "left":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v2, v1, v3

    .restart local v2    # "right":I
    goto :goto_1
.end method

.method private setVisibility(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shown"    # Z
    .param p3, "visible"    # Z

    .prologue
    .line 160
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-float v0, v1

    .line 161
    .local v0, "newAlpha":F
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    return-void

    .line 160
    .end local v0    # "newAlpha":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    .restart local v0    # "newAlpha":F
    :cond_1
    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 164
    if-eqz p3, :cond_2

    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    .line 163
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 159
    :goto_2
    return-void

    .line 164
    :cond_2
    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0d0028

    const/4 v3, -0x2

    .line 65
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 66
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget v1, p0, Lcom/android/systemui/qs/SignalTileView;->mStyle:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 71
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mRoaming:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mRoaming:Landroid/widget/ImageView;

    const v2, 0x7f02010b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mRoaming:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "iconLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mRoaming:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 86
    .end local v0    # "iconLayout":Landroid/widget/LinearLayout;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v1

    .line 79
    .restart local v0    # "iconLayout":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mRoaming:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 84
    .end local v0    # "iconLayout":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1
.end method

.method protected getIconMeasureMode()I
    .locals 1

    .prologue
    .line 107
    const/high16 v0, -0x80000000

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/qs/QSIconView;->onLayout(ZIIII)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSIconView;->onMeasure(II)V

    .line 92
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 93
    .local v0, "hs":I
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 94
    .local v1, "ws":I
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 95
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 90
    return-void
.end method

.method public setIcon(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    move-object v1, p1

    .line 129
    check-cast v1, Lcom/android/systemui/qs/QSTile$SignalState;

    .line 130
    .local v1, "s":Lcom/android/systemui/qs/QSTile$SignalState;
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/qs/SignalTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 131
    iget v6, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v6, :cond_4

    .line 132
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    iget v7, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :goto_0
    iget v6, v1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v6, :cond_5

    iget-boolean v6, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eqz v6, :cond_5

    .line 138
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v6, v7, v4, v4, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 142
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 144
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->isShown()Z

    move-result v2

    .line 147
    .local v2, "shown":Z
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    iget-boolean v7, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    invoke-direct {p0, v6, v2, v7}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    .line 148
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    iget-boolean v7, v1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    invoke-direct {p0, v6, v2, v7}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    .line 149
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mRoaming:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 149
    if-nez v6, :cond_2

    .line 151
    :cond_1
    iget v6, p0, Lcom/android/systemui/qs/SignalTileView;->mStyle:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 153
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 154
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mRoaming:Landroid/widget/ImageView;

    .line 155
    iget v7, v1, Lcom/android/systemui/qs/QSTile$SignalState;->subId:I

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, v1, Lcom/android/systemui/qs/QSTile$SignalState;->isShowRoaming:Z

    if-eqz v7, :cond_6

    .line 154
    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    return-void

    .line 135
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "shown":Z
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_1

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "shown":Z
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    move v4, v5

    .line 155
    goto :goto_2
.end method
