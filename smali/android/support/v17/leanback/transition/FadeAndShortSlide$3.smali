.class final Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;
.super Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 6
    .param p1, "t"    # Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # [I

    .prologue
    const/4 v5, 0x0

    .line 109
    aget v3, p4, v5

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 110
    .local v2, "viewCenter":I
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 111
    invoke-virtual {p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    .line 112
    .local v0, "center":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    aget v3, p4, v5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 114
    .local v1, "sceneRootCenter":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 115
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    .line 113
    .end local v1    # "sceneRootCenter":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    goto :goto_0

    .line 117
    .restart local v1    # "sceneRootCenter":I
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    add-float/2addr v3, v4

    return v3
.end method
