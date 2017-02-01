.class public Lcom/android/systemui/BatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterDrawable$1;,
        Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimOffset:I

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mListening:Z

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "frameColor"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 115
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    iput v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    .line 65
    iput v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 73
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 75
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 77
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    .line 78
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 79
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 80
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 82
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    .line 83
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    .line 84
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    .line 95
    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    .line 100
    iput v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    .line 108
    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$1;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 119
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f0b002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 120
    .local v4, "levels":Landroid/content/res/TypedArray;
    const v6, 0x7f0b002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 122
    .local v1, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 123
    .local v0, "N":I
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    .line 124
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 125
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    .line 126
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    .line 131
    const v6, 0x7f0f02e9

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 132
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 133
    const v7, 0x10e0056

    .line 132
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 135
    const v7, 0x7f11000c

    .line 134
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 137
    const v7, 0x7f11000d

    .line 136
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 139
    const v7, 0x7f11000e

    .line 138
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    .line 141
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 142
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 144
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    .line 148
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 149
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 153
    const-string/jumbo v6, "sans-serif-condensed"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 154
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 155
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 157
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 160
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 161
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 163
    const v6, 0x7f0c0075

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    .line 165
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v7, 0x7f0c0076

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    .line 169
    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    .line 170
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    .line 173
    const v6, 0x7f0c00a9

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 172
    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 174
    const v6, 0x7f0c00aa

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 176
    const v6, 0x7f0c00ac

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 175
    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    .line 177
    const v6, 0x7f0c00ad

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100225

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 115
    return-void
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 338
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 337
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 347
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 302
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    return v3

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 306
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 307
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    aget v2, v3, v1

    .line 308
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 309
    if-gt p1, v2, :cond_2

    .line 312
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_1

    .line 313
    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    return v3

    .line 315
    :cond_1
    return v0

    .line 306
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 319
    .end local v2    # "thresh":I
    :cond_3
    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 343
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 342
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 256
    const v5, 0x7f0b002d

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 257
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 258
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 259
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 260
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 258
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 262
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 263
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 264
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 265
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 263
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 267
    :cond_1
    return-object v4
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 271
    const v5, 0x7f0b002e

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 272
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 273
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 274
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 275
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 273
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 277
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 278
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 279
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 280
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 278
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 282
    :cond_1
    return-object v4
.end method

.method private postInvalidate()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method private updateChargingAnimLevel()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 236
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    .line 237
    .local v0, "curLevel":I
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v1, :cond_0

    .line 238
    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    .line 239
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    :goto_0
    return v0

    .line 241
    :cond_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    .line 242
    const/16 v1, 0x60

    if-lt v0, v1, :cond_1

    .line 243
    const/16 v0, 0x64

    .line 244
    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 246
    :cond_1
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method

.method private updateShowPercent()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 296
    const-string/jumbo v2, "status_bar_show_battery_percent"

    .line 295
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    .line 294
    return-void
.end method


# virtual methods
.method public disableShowPercent()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    .line 207
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 35
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d002a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    .line 354
    .local v29, "showChargingAnim":Z
    if-eqz v29, :cond_0

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateChargingAnimLevel()I

    move-result v20

    .line 358
    .local v20, "level":I
    :goto_0
    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_1

    return-void

    .line 356
    .end local v20    # "level":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    move/from16 v20, v0

    goto :goto_0

    .line 360
    .restart local v20    # "level":I
    :cond_1
    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v17, v4, v6

    .line 361
    .local v17, "drawFrac":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v18, v0

    .line 362
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v4, v4

    const v6, 0x3f27b961

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v30, v0

    .line 363
    .local v30, "width":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    sub-int v4, v4, v30

    div-int/lit8 v28, v4, 0x2

    .line 365
    .local v28, "px":I
    move/from16 v0, v18

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    .line 367
    .local v16, "buttonHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v30

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v4, v6, v7, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v28

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, v30

    int-to-float v7, v0

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 373
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3e800000    # 0.25f

    mul-float v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v10, v10, v33

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v33, v33, v34

    .line 371
    move/from16 v0, v33

    invoke-virtual {v4, v6, v7, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move/from16 v0, v16

    int-to-float v7, v0

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 389
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    :goto_1
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    const/16 v4, 0x60

    move/from16 v0, v20

    if-lt v0, v4, :cond_5

    .line 392
    const/high16 v17, 0x3f800000    # 1.0f

    .line 397
    :cond_2
    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v17, v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    .line 401
    .local v21, "levelTop":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 412
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_d

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    add-float v12, v4, v6

    .line 415
    .local v12, "bl":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    add-float v15, v4, v6

    .line 416
    .local v15, "bt":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    sub-float v14, v4, v6

    .line 417
    .local v14, "br":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    sub-float v11, v4, v6

    .line 418
    .local v11, "bb":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v12

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v15

    if-eqz v4, :cond_7

    .line 420
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v12, v15, v14, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 423
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 424
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/16 v33, 0x1

    aget v10, v10, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v33

    mul-float v10, v10, v33

    add-float/2addr v7, v10

    .line 422
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 425
    const/16 v19, 0x2

    .local v19, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_b

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 427
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    aget v7, v7, v19

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 428
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v33, v19, 0x1

    aget v10, v10, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v33

    mul-float v10, v10, v33

    add-float/2addr v7, v10

    .line 426
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    add-int/lit8 v19, v19, 0x2

    goto :goto_4

    .line 389
    .end local v11    # "bb":F
    .end local v12    # "bl":F
    .end local v14    # "br":F
    .end local v15    # "bt":F
    .end local v19    # "i":I
    .end local v21    # "levelTop":F
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    goto/16 :goto_1

    .line 393
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_2

    .line 394
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 398
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, v17

    mul-float/2addr v6, v7

    add-float v21, v4, v6

    .restart local v21    # "levelTop":F
    goto/16 :goto_3

    .line 419
    .restart local v11    # "bb":F
    .restart local v12    # "bl":F
    .restart local v14    # "br":F
    .restart local v15    # "bt":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v14

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v11

    if-nez v4, :cond_3

    .line 435
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    div-float v13, v4, v6

    .line 436
    .local v13, "boltPct":F
    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 437
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_c

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 480
    .end local v11    # "bb":F
    .end local v12    # "bl":F
    .end local v13    # "boltPct":F
    .end local v14    # "br":F
    .end local v15    # "bt":F
    :cond_8
    :goto_6
    const/16 v23, 0x0

    .line 481
    .local v23, "pctOpaque":Z
    const/4 v8, 0x0

    .local v8, "pctX":F
    const/4 v9, 0x0

    .line 482
    .local v9, "pctY":F
    const/4 v5, 0x0

    .line 483
    .local v5, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_12

    .line 502
    .end local v5    # "pctText":Ljava/lang/String;
    .end local v23    # "pctOpaque":Z
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 511
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_15

    .line 351
    :cond_a
    :goto_8
    return-void

    .line 430
    .end local v8    # "pctX":F
    .end local v9    # "pctY":F
    .restart local v11    # "bb":F
    .restart local v12    # "bl":F
    .restart local v14    # "br":F
    .restart local v15    # "bt":F
    .restart local v19    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 431
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 432
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/16 v33, 0x1

    aget v10, v10, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v33

    mul-float v10, v10, v33

    add-float/2addr v7, v10

    .line 430
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 442
    .end local v19    # "i":I
    .restart local v13    # "boltPct":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_6

    .line 444
    .end local v11    # "bb":F
    .end local v12    # "bl":F
    .end local v13    # "boltPct":F
    .end local v14    # "br":F
    .end local v15    # "bt":F
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_8

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float v27, v4, v6

    .line 447
    .local v27, "pw":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v24, v4, v6

    .line 448
    .local v24, "pl":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v26, v4, v6

    .line 449
    .local v26, "pt":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v25, v4, v6

    .line 450
    .local v25, "pr":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float v6, v6, v27

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v22, v4, v6

    .line 451
    .local v22, "pb":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v24

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v26

    if-eqz v4, :cond_f

    .line 453
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 456
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 457
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    const/16 v33, 0x1

    aget v10, v10, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v33

    mul-float v10, v10, v33

    add-float/2addr v7, v10

    .line 455
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 458
    const/16 v19, 0x2

    .restart local v19    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_10

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 460
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    aget v7, v7, v19

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 461
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    add-int/lit8 v33, v19, 0x1

    aget v10, v10, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v33

    mul-float v10, v10, v33

    add-float/2addr v7, v10

    .line 459
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 458
    add-int/lit8 v19, v19, 0x2

    goto :goto_9

    .line 452
    .end local v19    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v25

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v22

    if-nez v4, :cond_e

    .line 468
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    div-float v13, v4, v6

    .line 469
    .restart local v13    # "boltPct":F
    const/4 v4, 0x0

    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 470
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_11

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 463
    .end local v13    # "boltPct":F
    .restart local v19    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 464
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 465
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    const/16 v33, 0x1

    aget v10, v10, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/RectF;->height()F

    move-result v33

    mul-float v10, v10, v33

    add-float/2addr v7, v10

    .line 463
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_a

    .line 475
    .end local v19    # "i":I
    .restart local v13    # "boltPct":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_6

    .line 483
    .end local v13    # "boltPct":F
    .end local v22    # "pb":F
    .end local v24    # "pl":F
    .end local v25    # "pr":F
    .end local v26    # "pt":F
    .end local v27    # "pw":F
    .restart local v5    # "pctText":Ljava/lang/String;
    .restart local v8    # "pctX":F
    .restart local v9    # "pctY":F
    .restart local v23    # "pctOpaque":Z
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v20

    if-le v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    if-eqz v4, :cond_9

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    int-to-float v7, v0

    .line 487
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    const/16 v10, 0x64

    if-ne v4, v10, :cond_13

    const v4, 0x3ec28f5c    # 0.38f

    .line 485
    :goto_b
    mul-float/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextHeight:F

    .line 489
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v8, v4, v6

    .line 491
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef0a3d7    # 0.47f

    mul-float v9, v4, v6

    .line 492
    cmpl-float v4, v21, v9

    if-lez v4, :cond_14

    const/16 v23, 0x1

    .line 493
    .local v23, "pctOpaque":Z
    :goto_c
    if-nez v23, :cond_9

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_7

    .line 487
    .local v5, "pctText":Ljava/lang/String;
    .local v23, "pctOpaque":Z
    :cond_13
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_b

    .line 492
    .local v5, "pctText":Ljava/lang/String;
    :cond_14
    const/16 v23, 0x0

    goto :goto_c

    .line 512
    .end local v5    # "pctText":Ljava/lang/String;
    .end local v23    # "pctOpaque":Z
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_16

    .line 514
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v31, v4, v6

    .line 515
    .local v31, "x":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef5c28f    # 0.48f

    mul-float v32, v4, v6

    .line 516
    .local v32, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 517
    .end local v31    # "x":F
    .end local v32    # "y":F
    :cond_16
    if-eqz v23, :cond_a

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 223
    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    .line 224
    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    .line 225
    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    .line 222
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    .line 230
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 526
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 216
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    .line 289
    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    .line 290
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    .line 286
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 530
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 323
    iget v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getBackgroundColor(F)I

    move-result v0

    .line 327
    .local v0, "backgroundColor":I
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getFillColor(F)I

    move-result v1

    .line 328
    .local v1, "fillColor":I
    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    .line 329
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    .line 333
    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 322
    return-void
.end method

.method public startListening()V
    .locals 4

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    .line 195
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 193
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    .line 203
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 201
    return-void
.end method
