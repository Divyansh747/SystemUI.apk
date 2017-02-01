.class public Lcom/android/systemui/qs/QSIconView;
.super Landroid/view/ViewGroup;
.source "QSIconView.java"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field protected final STATUS_BAR_STYLE_EXTENDED:I

.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field protected mStyle:I

.field protected final mTilePaddingBelowIconPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    .line 39
    iput v2, p0, Lcom/android/systemui/qs/QSIconView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 40
    iput v3, p0, Lcom/android/systemui/qs/QSIconView;->STATUS_BAR_STYLE_EXTENDED:I

    .line 42
    iput v2, p0, Lcom/android/systemui/qs/QSIconView;->mStyle:I

    .line 47
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierOneSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iput v3, p0, Lcom/android/systemui/qs/QSIconView;->mStyle:I

    .line 52
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f100186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    .line 54
    const v1, 0x7f10018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSIconView;->addView(Landroid/view/View;)V

    .line 44
    return-void

    .line 50
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mStyle:I

    goto :goto_0
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 123
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    return-object v0
.end method

.method public disableAnimation()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    .line 60
    return-void
.end method

.method protected final exactly(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 128
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    .prologue
    .line 117
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 131
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredWidth()I

    move-result v3

    .line 79
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredHeight()I

    move-result v0

    .line 80
    .local v0, "h":I
    const/4 v2, 0x0

    .line 81
    .local v2, "top":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 82
    .local v1, "iconLeft":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/systemui/qs/QSIconView;->layout(Landroid/view/View;II)V

    .line 77
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 71
    .local v1, "w":I
    iget v2, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSIconView;->exactly(I)I

    move-result v0

    .line 72
    .local v0, "iconSpec":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getIconMeasureMode()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSIconView;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 7
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const v6, 0x7f12002f

    const/4 v5, 0x0

    .line 90
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    :goto_0
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile$Icon;->getPadding()I

    move-result v2

    .line 95
    .local v2, "padding":I
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_0

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 98
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p1, v5, v2, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 101
    instance-of v3, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 102
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 103
    .local v0, "a":Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 104
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 109
    .end local v0    # "a":Landroid/graphics/drawable/Animatable;
    .end local v2    # "padding":I
    :cond_1
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v3, :cond_5

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0084

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 89
    :goto_2
    return-void

    .line 93
    :cond_2
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v1, 0x0

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 94
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "padding":I
    goto :goto_1

    .line 112
    .end local v2    # "padding":I
    :cond_5
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_2
.end method

.method public setIcon(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSIconView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 85
    return-void
.end method
