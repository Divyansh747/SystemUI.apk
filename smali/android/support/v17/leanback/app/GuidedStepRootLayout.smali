.class Landroid/support/v17/leanback/app/GuidedStepRootLayout;
.super Landroid/widget/LinearLayout;
.source "GuidedStepRootLayout.java"


# instance fields
.field private mFocusOutEnd:Z

.field private mFocusOutStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutStart:Z

    .line 29
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutEnd:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutStart:Z

    .line 29
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutEnd:Z

    .line 35
    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/16 v3, 0x42

    const/16 v2, 0x11

    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "newFocus":Landroid/view/View;
    if-eq p2, v2, :cond_0

    if-ne p2, v3, :cond_5

    .line 51
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/Util;->isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_3

    .line 55
    if-ne p2, v2, :cond_4

    .line 56
    :cond_2
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutStart:Z

    if-nez v1, :cond_5

    .line 57
    return-object p1

    .line 55
    :cond_3
    if-eq p2, v3, :cond_2

    .line 60
    :cond_4
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutEnd:Z

    if-nez v1, :cond_5

    .line 61
    return-object p1

    .line 65
    :cond_5
    return-object v0
.end method
