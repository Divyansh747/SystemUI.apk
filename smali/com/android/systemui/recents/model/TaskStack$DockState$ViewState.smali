.class public Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack$DockState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;
    }
.end annotation


# static fields
.field private static final HINT_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final dockAreaAlpha:I

.field public final dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

.field public final hintTextAlpha:I

.field public final hintTextOrientation:I

.field private mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

.field private mHintText:Ljava/lang/String;

.field private mHintTextAlpha:I

.field private mHintTextBounds:Landroid/graphics/Point;

.field private mHintTextPaint:Landroid/graphics/Paint;

.field private final mHintTextResId:I

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;

    const-string/jumbo v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;-><init>(Ljava/lang/String;)V

    .line 292
    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    .line 291
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 3
    .param p1, "areaAlpha"    # I
    .param p2, "hintAlpha"    # I
    .param p3, "hintOrientation"    # I
    .param p4, "hintTextResId"    # I

    .prologue
    const/4 v2, -0x1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    .line 315
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    .line 317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    .line 321
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 322
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 323
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 324
    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .line 325
    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextOrientation:I

    .line 326
    iput p4, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextResId:I

    .line 327
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    .line 328
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)V
    .locals 0
    .param p1, "areaAlpha"    # I
    .param p2, "hintAlpha"    # I
    .param p3, "hintOrientation"    # I
    .param p4, "hintTextResId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 348
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v3

    if-lez v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    :cond_0
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    if-lez v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 355
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 356
    .local v1, "x":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 357
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 358
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextOrientation:I

    if-ne v3, v7, :cond_1

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v5, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 363
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextOrientation:I

    if-ne v3, v7, :cond_2

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 346
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    return-void
.end method

.method public startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "areaAlpha"    # I
    .param p3, "hintAlpha"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animateAlpha"    # Z
    .param p7, "animateBounds"    # Z

    .prologue
    .line 374
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 379
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 381
    if-eqz p6, :cond_5

    .line 382
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 383
    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 382
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 383
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    aput p2, v5, v6

    .line 382
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 384
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    if-eq v3, p3, :cond_2

    .line 392
    if-eqz p6, :cond_7

    .line 393
    sget-object v3, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 394
    const/4 v5, 0x1

    aput p3, v4, v5

    .line 393
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 395
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 396
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    if-le p3, v3, :cond_6

    .line 397
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 396
    :goto_1
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 418
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 419
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    .line 420
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 421
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 373
    :cond_4
    return-void

    .line 388
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0

    .line 398
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 401
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    .line 402
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    goto :goto_2

    .line 406
    :cond_8
    if-eqz p7, :cond_9

    .line 408
    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 407
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Rect;

    .line 409
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 407
    invoke-static {v3, v4, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 410
    .local v2, "prop":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 411
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 412
    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 413
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 415
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "prop":Landroid/animation/PropertyValuesHolder;
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public update(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextResId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    .line 338
    const v2, 0x7f10024c

    .line 337
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 340
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 334
    return-void
.end method
