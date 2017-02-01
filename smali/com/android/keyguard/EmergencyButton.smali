.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$1;,
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
    }
.end annotation


# static fields
.field private static final INTENT_EMERGENCY_DIAL:Landroid/content/Intent;


# instance fields
.field private mDownX:I

.field private mDownY:I

.field private final mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsCarrierSupported:Z

.field private final mIsVoiceCapable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressWasDragged:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/policy/EmergencyAffordanceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "com.android.phone"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    const/high16 v1, 0x14800000

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 92
    invoke-static {}, Lcom/android/keyguard/EmergencyButton;->isCarrierOneSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsCarrierSupported:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x112005d

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    const v1, 0x112004d

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 107
    new-instance v0, Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    .line 101
    return-void
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .prologue
    .line 273
    const-string/jumbo v1, "persist.radio.atel.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "property":Ljava/lang/String;
    const-string/jumbo v1, "405854"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method private resumeCall()V
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 254
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 111
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 171
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 125
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 127
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v0, Lcom/android/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 123
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 149
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 150
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_1

    .line 151
    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    .line 152
    iput v3, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    .line 153
    iput-boolean v6, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    .line 162
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 155
    :cond_1
    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 156
    .local v2, "xDiff":I
    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 157
    .local v4, "yDiff":I
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 158
    .local v0, "touchSlop":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v0, :cond_0

    .line 159
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/Button;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    .line 247
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 185
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-interface {v1}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 179
    :cond_0
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EmergencyButton"

    const-string/jumbo v2, "Failed to stop app pinning"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    .line 198
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 199
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 197
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public updateEmergencyCallButton()V
    .locals 6

    .prologue
    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "visible":Z
    iget-boolean v4, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    if-eqz v4, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    const/4 v3, 0x1

    .line 227
    .end local v3    # "visible":Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_8

    .line 228
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 232
    const v2, 0x10402a9

    .line 241
    .local v2, "textId":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    .line 203
    .end local v2    # "textId":I
    :goto_2
    return-void

    .line 210
    .restart local v3    # "visible":Z
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v1

    .line 212
    .local v1, "simLocked":Z
    if-eqz v1, :cond_3

    .line 214
    iget-boolean v3, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 221
    .end local v3    # "visible":Z
    :goto_3
    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->kg_hide_emgcy_btn_when_oos:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 223
    .local v0, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOOS()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "visible":Z
    goto :goto_0

    .line 217
    .end local v0    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 218
    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->config_showEmergencyButton:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .local v3, "visible":Z
    goto :goto_3

    .line 217
    .local v3, "visible":Z
    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    .line 223
    .end local v3    # "visible":Z
    .restart local v0    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_5
    const/4 v3, 0x1

    .restart local v3    # "visible":Z
    goto :goto_0

    .line 234
    .end local v0    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v1    # "simLocked":Z
    .end local v3    # "visible":Z
    :cond_6
    iget-boolean v4, p0, Lcom/android/keyguard/EmergencyButton;->mIsCarrierSupported:Z

    if-eqz v4, :cond_7

    .line 236
    sget v2, Lcom/android/keyguard/R$string;->button_lockscreen_emergency_call:I

    .restart local v2    # "textId":I
    goto :goto_1

    .line 238
    .end local v2    # "textId":I
    :cond_7
    const v2, 0x10402a8

    .restart local v2    # "textId":I
    goto :goto_1

    .line 243
    .end local v2    # "textId":I
    :cond_8
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_2
.end method
