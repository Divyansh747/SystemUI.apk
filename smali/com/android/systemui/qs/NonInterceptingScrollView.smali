.class public Lcom/android/systemui/qs/NonInterceptingScrollView;
.super Landroid/widget/ScrollView;
.source "NonInterceptingScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 34
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 41
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 36
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
