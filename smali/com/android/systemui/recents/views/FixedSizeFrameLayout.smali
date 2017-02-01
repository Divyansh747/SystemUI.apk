.class public Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FixedSizeFrameLayout.java"


# instance fields
.field private final mLayoutBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    .line 47
    return-void
.end method


# virtual methods
.method protected layoutContents(Landroid/graphics/Rect;Z)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "changed"    # Z

    .prologue
    .line 90
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p2

    invoke-super/range {v0 .. v5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->getMeasuredWidth()I

    move-result v7

    .line 93
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->getMeasuredHeight()I

    move-result v6

    .line 94
    .local v6, "height":I
    invoke-virtual {p0, v7, v6, v7, v6}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    .line 89
    return-void
.end method

.method protected measureContents(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 82
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 83
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 82
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 81
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->layoutContents(Landroid/graphics/Rect;Z)V

    .line 58
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 54
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->measureContents(II)V

    .line 52
    return-void
.end method

.method public final requestLayout()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 64
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->measureContents(II)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->mLayoutBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->layoutContents(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method
