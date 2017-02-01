.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$1;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

.field private static final synthetic -com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mSimErrorState:[Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/CarrierText;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    return-object v0
.end method

.method private static synthetic -getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/keyguard/CarrierText;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-keyguard-CarrierText$StatusModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/CarrierText$StatusMode;->values()[Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/keyguard/CarrierText;->-com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/CarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 1
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    .line 62
    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    const v3, 0x112005d

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 117
    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    .line 116
    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->CarrierText_allCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 121
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 125
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 111
    return-void

    .line 120
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    throw v2
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 482
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 483
    .local v0, "plmnValid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 484
    .local v1, "spnValid":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 482
    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "plmnValid":Z
    goto :goto_0

    .line 483
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "spnValid":Z
    goto :goto_1

    .line 486
    :cond_2
    if-eqz v0, :cond_3

    .line 487
    return-object p0

    .line 488
    :cond_3
    if-eqz v1, :cond_4

    .line 489
    return-object p1

    .line 491
    :cond_4
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 382
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    invoke-static {}, Lcom/android/keyguard/CarrierText;->-getcom-android-keyguard-CarrierText$StatusModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 428
    .end local v0    # "carrierText":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 384
    .restart local v0    # "carrierText":Ljava/lang/CharSequence;
    :pswitch_0
    move-object v0, p2

    .line 385
    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 389
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_1
    const-string/jumbo v0, ""

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 394
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_network_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 393
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 398
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_3
    const/4 v0, 0x0

    .line 399
    goto :goto_0

    .line 402
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 403
    sget v3, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    .line 402
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 407
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_5
    const/4 v0, 0x0

    .line 408
    goto :goto_0

    .line 412
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 411
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 418
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 417
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 423
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->lockscreen_sim_error_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 422
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    if-nez p1, :cond_0

    .line 448
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_4

    .line 453
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v2, :cond_1

    .line 454
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v2, :cond_3

    .line 457
    .local v0, "missingAndNotProvisioned":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 458
    :cond_2
    invoke-static {}, Lcom/android/keyguard/CarrierText;->-getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 478
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .end local v0    # "missingAndNotProvisioned":Z
    :cond_3
    move v0, v1

    .line 454
    goto :goto_0

    :cond_4
    move v0, v1

    .line 452
    goto :goto_0

    .line 460
    .restart local v0    # "missingAndNotProvisioned":Z
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 462
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 464
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 466
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 468
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 470
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 472
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 474
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 476
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 439
    :cond_0
    return-object p1
.end method

.method private networkClassToString(I)Ljava/lang/String;
    .locals 6
    .param p1, "networkClass"    # I

    .prologue
    .line 548
    const v2, 0x1040074

    .line 549
    const v3, 0x1040075

    .line 550
    const v4, 0x1040076

    .line 551
    const v5, 0x1040077

    .line 548
    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v0

    .line 552
    .local v0, "classIds":[I
    const/4 v1, 0x0

    .line 553
    .local v1, "classString":Ljava/lang/String;
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    .end local v1    # "classString":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    :cond_1
    return-object v1
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "noSims"    # Z

    .prologue
    .line 135
    const-string/jumbo v0, ""

    .line 137
    .local v0, "carrier":Ljava/lang/CharSequence;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 136
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 138
    .local v1, "carrierTextForSimState":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mSimErrorState:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 142
    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10402bc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 143
    invoke-static {v1, v3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 145
    :cond_0
    if-nez v2, :cond_2

    .line 147
    invoke-static {v1, p1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 138
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p1, v1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 154
    :cond_3
    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 351
    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 348
    :goto_0
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 357
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 362
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 340
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 341
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 342
    const v2, 0x1040542

    .line 341
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 343
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 344
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 339
    return-void
.end method

.method protected updateCarrierText()V
    .locals 32

    .prologue
    .line 158
    const/4 v4, 0x1

    .line 159
    .local v4, "allSimsMissing":Z
    const/4 v5, 0x0

    .line 160
    .local v5, "anySimReadyAndInService":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 161
    const v29, 0x11200c1

    .line 160
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 162
    .local v19, "showLocale":Z
    const/4 v8, 0x0

    .line 164
    .local v8, "displayText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v26

    .line 165
    .local v26, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    .line 166
    .local v3, "N":I
    const-string/jumbo v28, "CarrierText"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "updateCarrierText(): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-nez v3, :cond_1

    .line 172
    const/4 v11, 0x0

    .line 173
    .local v11, "isSimAbsent":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v9, v0, :cond_0

    .line 174
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v28

    .line 175
    const/16 v29, 0x1

    .line 174
    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 176
    const/4 v11, 0x1

    .line 180
    :cond_0
    if-nez v11, :cond_1

    .line 181
    const/4 v4, 0x0

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    sget v29, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 185
    .end local v8    # "displayText":Ljava/lang/CharSequence;
    .end local v9    # "i":I
    .end local v11    # "isSimAbsent":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v3, :cond_12

    .line 186
    const-string/jumbo v14, ""

    .line 187
    .local v14, "networkClass":Ljava/lang/CharSequence;
    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v25

    .line 188
    .local v25, "subId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v21

    .line 189
    .local v21, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v28

    .line 190
    const v29, 0x11200c2

    .line 189
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    .line 191
    .local v20, "showRat":Z
    if-eqz v20, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/ServiceState;

    .line 193
    .local v24, "ss":Landroid/telephony/ServiceState;
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    if-eqz v28, :cond_2

    .line 194
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v28

    if-nez v28, :cond_4

    .line 195
    :cond_2
    const/4 v15, 0x0

    .line 196
    .local v15, "networkType":I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v28

    if-eqz v28, :cond_a

    .line 198
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v15

    .line 203
    :cond_3
    :goto_2
    invoke-static {v15}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/keyguard/CarrierText;->networkClassToString(I)Ljava/lang/String;

    move-result-object v14

    .line 207
    .end local v15    # "networkType":I
    .end local v24    # "ss":Landroid/telephony/ServiceState;
    :cond_4
    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 208
    .local v6, "carrierName":Ljava/lang/CharSequence;
    if-nez v19, :cond_5

    if-eqz v20, :cond_e

    .line 209
    :cond_5
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x2

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, "names":[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v16, "newCarrierName":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_3
    array-length v0, v13

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v12, v0, :cond_d

    .line 212
    if-eqz v19, :cond_6

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 214
    aget-object v29, v13, v12

    const v30, 0x1070059

    .line 215
    const v31, 0x107005a

    .line 213
    invoke-static/range {v28 .. v31}, Landroid/util/NativeTextHelper;->getLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v13, v12

    .line 217
    :cond_6
    aget-object v28, v13, v12

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 218
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_7

    if-eqz v20, :cond_7

    .line 219
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v29, v13, v12

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v13, v12

    .line 222
    :cond_7
    if-lez v12, :cond_b

    aget-object v28, v13, v12

    add-int/lit8 v29, v12, -0x1

    aget-object v29, v13, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 211
    :cond_8
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 173
    .end local v6    # "carrierName":Ljava/lang/CharSequence;
    .end local v12    # "j":I
    .end local v13    # "names":[Ljava/lang/String;
    .end local v14    # "networkClass":Ljava/lang/CharSequence;
    .end local v16    # "newCarrierName":Ljava/lang/StringBuilder;
    .end local v20    # "showRat":Z
    .end local v21    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v25    # "subId":I
    .restart local v8    # "displayText":Ljava/lang/CharSequence;
    .restart local v11    # "isSimAbsent":Z
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 199
    .end local v8    # "displayText":Ljava/lang/CharSequence;
    .end local v11    # "isSimAbsent":Z
    .restart local v14    # "networkClass":Ljava/lang/CharSequence;
    .restart local v15    # "networkType":I
    .restart local v20    # "showRat":Z
    .restart local v21    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v24    # "ss":Landroid/telephony/ServiceState;
    .restart local v25    # "subId":I
    :cond_a
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v28

    if-eqz v28, :cond_3

    .line 201
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v15

    goto/16 :goto_2

    .line 225
    .end local v15    # "networkType":I
    .end local v24    # "ss":Landroid/telephony/ServiceState;
    .restart local v6    # "carrierName":Ljava/lang/CharSequence;
    .restart local v12    # "j":I
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v16    # "newCarrierName":Ljava/lang/StringBuilder;
    :cond_b
    if-lez v12, :cond_c

    sget-object v28, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 226
    :cond_c
    aget-object v28, v13, v12

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 229
    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 231
    .end local v12    # "j":I
    .end local v13    # "names":[Ljava/lang/String;
    .end local v16    # "newCarrierName":Ljava/lang/StringBuilder;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 233
    .local v7, "carrierTextForSimState":Ljava/lang/CharSequence;
    const-string/jumbo v28, "CarrierText"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Handling (subId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "): "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v7, :cond_f

    .line 236
    const/4 v4, 0x0

    .line 237
    invoke-static {v8, v7}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 239
    :cond_f
    sget-object v28, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/ServiceState;

    .line 241
    .restart local v24    # "ss":Landroid/telephony/ServiceState;
    if-eqz v24, :cond_11

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v28

    if-nez v28, :cond_11

    .line 244
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v28

    const/16 v29, 0x12

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v28

    if-eqz v28, :cond_11

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_11

    .line 249
    :cond_10
    const-string/jumbo v28, "CarrierText"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "SIM ready and in service: subId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ", ss="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v5, 0x1

    .line 185
    .end local v24    # "ss":Landroid/telephony/ServiceState;
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 261
    .end local v6    # "carrierName":Ljava/lang/CharSequence;
    .end local v7    # "carrierTextForSimState":Ljava/lang/CharSequence;
    .end local v14    # "networkClass":Ljava/lang/CharSequence;
    .end local v20    # "showRat":Z
    .end local v21    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v25    # "subId":I
    :cond_12
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v3, v0, :cond_14

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEmergencyOnly()Z

    move-result v28

    .line 261
    if-eqz v28, :cond_14

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPresentSubId()I

    move-result v18

    .line 266
    .local v18, "presentSubId":I
    const-string/jumbo v28, "CarrierText"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " Present sim - sub id: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_14

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    const v29, 0x10402bc

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .line 271
    .local v27, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 272
    new-instance v29, Landroid/content/IntentFilter;

    const-string/jumbo v30, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct/range {v29 .. v30}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 271
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v23

    .line 273
    .local v23, "spnUpdatedIntent":Landroid/content/Intent;
    if-eqz v23, :cond_13

    .line 274
    const-string/jumbo v22, ""

    .line 275
    .local v22, "spn":Ljava/lang/String;
    const-string/jumbo v28, "showSpn"

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 276
    const-string/jumbo v28, "subscription"

    const/16 v29, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 278
    const-string/jumbo v28, "spn"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 279
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_13

    .line 280
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 285
    .end local v22    # "spn":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v28

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 288
    .end local v18    # "presentSubId":I
    .end local v23    # "spnUpdatedIntent":Landroid/content/Intent;
    .end local v27    # "text":Ljava/lang/CharSequence;
    :cond_14
    if-eqz v4, :cond_15

    .line 289
    if-eqz v3, :cond_17

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    sget v29, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    .line 298
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v28

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 329
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/android/keyguard/CarrierText;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v8

    .line 332
    .local v8, "displayText":Ljava/lang/CharSequence;
    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    sget v29, Lcom/android/keyguard/R$string;->airplane_mode:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 335
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void

    .line 305
    .end local v8    # "displayText":Ljava/lang/CharSequence;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    const v29, 0x10402bc

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .line 306
    .restart local v27    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 307
    new-instance v29, Landroid/content/IntentFilter;

    const-string/jumbo v30, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct/range {v29 .. v30}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    .line 308
    .local v10, "i":Landroid/content/Intent;
    if-eqz v10, :cond_1a

    .line 309
    const-string/jumbo v22, ""

    .line 310
    .restart local v22    # "spn":Ljava/lang/String;
    const-string/jumbo v17, ""

    .line 311
    .local v17, "plmn":Ljava/lang/String;
    const-string/jumbo v28, "showSpn"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 312
    const-string/jumbo v28, "spn"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 314
    :cond_18
    const-string/jumbo v28, "showPlmn"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 315
    const-string/jumbo v28, "plmn"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 317
    :cond_19
    const-string/jumbo v28, "CarrierText"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Getting plmn/spn sticky brdcst "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 319
    move-object/from16 v27, v17

    .line 325
    .end local v17    # "plmn":Ljava/lang/String;
    .end local v22    # "spn":Ljava/lang/String;
    :cond_1a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v28

    sget v29, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v28

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .restart local v8    # "displayText":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 321
    .end local v8    # "displayText":Ljava/lang/CharSequence;
    .restart local v17    # "plmn":Ljava/lang/String;
    .restart local v22    # "spn":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    goto :goto_6
.end method
