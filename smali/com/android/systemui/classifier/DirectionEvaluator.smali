.class public Lcom/android/systemui/classifier/DirectionEvaluator;
.super Ljava/lang/Object;
.source "DirectionEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(FFI)F
    .locals 6
    .param p0, "xDiff"    # F
    .param p1, "yDiff"    # F
    .param p2, "type"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    const/high16 v0, 0x40b00000    # 5.5f

    .line 22
    .local v0, "falsingEvaluation":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    .line 23
    .local v1, "vertical":Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 52
    :cond_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 22
    .end local v1    # "vertical":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "vertical":Z
    goto :goto_0

    .line 26
    :pswitch_1
    if-eqz v1, :cond_2

    float-to-double v2, p1

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 27
    :cond_2
    return v0

    .line 31
    :pswitch_2
    if-eqz v1, :cond_0

    .line 32
    return v0

    .line 36
    :pswitch_3
    if-eqz v1, :cond_3

    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 37
    :cond_3
    return v0

    .line 41
    :pswitch_4
    float-to-double v2, p0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 42
    return v0

    .line 46
    :pswitch_5
    float-to-double v2, p0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 47
    return v0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
