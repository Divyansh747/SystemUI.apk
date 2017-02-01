.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0
    .param p1, "dreaming"    # Z

    .prologue
    .line 266
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 244
    return-void
.end method

.method public onFingerprintAcquired()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 224
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 239
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 231
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 249
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 180
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .prologue
    .line 260
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 75
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 79
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    .line 80
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 82
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 83
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    .line 77
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 69
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 44
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 61
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 131
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 124
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 255
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 195
    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 200
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 136
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 117
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
