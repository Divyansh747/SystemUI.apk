.class public Lcom/android/systemui/classifier/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/FalsingManager$1;
    }
.end annotation


# static fields
.field private static final CLASSIFIER_SENSORS:[I

.field private static final COLLECTOR_SENSORS:[I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingManager;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataCollector:Lcom/android/systemui/analytics/DataCollector;

.field private mEnforceBouncer:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionActive:Z

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 47
    new-array v0, v3, [I

    .line 48
    const/4 v1, 0x0

    aput v4, v0, v1

    .line 47
    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    .line 53
    const/4 v0, 0x4

    .line 55
    const/4 v1, 0x5

    .line 56
    const/16 v2, 0xb

    .line 51
    filled-new-array {v3, v0, v4, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    .line 69
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 70
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 72
    iput v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 75
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager$1;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/classifier/FalsingManager$1;-><init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/analytics/DataCollector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 88
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "falsing_manager_enforce_bouncer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 93
    const/4 v3, -0x1

    .line 90
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    .line 82
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 102
    :cond_0
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onSessionStart()V
    .locals 3

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "onSessionStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "classifierEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabledFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 136
    :cond_2
    return-void
.end method

.method private registerSensors([I)V
    .locals 6
    .param p1, "sensors"    # [I

    .prologue
    .line 152
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 153
    .local v1, "sensorType":I
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 154
    .local v0, "s":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 155
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "s":Landroid/hardware/Sensor;
    .end local v1    # "sensorType":I
    :cond_1
    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->onSessionStart()V

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private shouldSessionBeActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_0

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateConfiguration()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 107
    const-string/jumbo v2, "falsing_manager_enforce_bouncer"

    .line 106
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 105
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    const-string/jumbo v0, "FALSING MANAGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const-string/jumbo v0, "classifierEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 398
    const-string/jumbo v0, "mSessionActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 399
    const-string/jumbo v0, "mBouncerOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 400
    const-string/jumbo v0, "mState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v0, "mScreenOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 402
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 395
    return-void

    :cond_0
    move v0, v2

    .line 397
    goto :goto_0

    :cond_1
    move v0, v2

    .line 398
    goto :goto_1

    :cond_2
    move v0, v2

    .line 399
    goto :goto_2

    :cond_3
    move v1, v2

    .line 401
    goto :goto_3
.end method

.method public isClassiferEnabled()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFalseTouch()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v3, "isFalseTouch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    const-string/jumbo v4, "Session is not active, yet there\'s a query for a false touch."

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-string/jumbo v4, " enabled="

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 176
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string/jumbo v4, " mScreenOn="

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    iget-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v4, :cond_2

    .line 176
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    const-string/jumbo v1, " mState="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    iget v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/systemui/classifier/FalsingLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    return v2

    :cond_1
    move v0, v2

    .line 178
    goto :goto_0

    :cond_2
    move v1, v2

    .line 179
    goto :goto_1

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isFalseTouch()Z

    move-result v0

    return v0
.end method

.method public isReportingEnabled()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isReportingEnabled()Z

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/analytics/DataCollector;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 199
    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingAborted()V

    .line 372
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 2
    .param p1, "rightCorner"    # Z

    .prologue
    .line 361
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 362
    const-string/jumbo v0, "onAffordanceSwipingStarted"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingStarted(Z)V

    .line 360
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    goto :goto_0
.end method

.method public onBouncerHidden()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 277
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 278
    const-string/jumbo v2, "onBouncerHidden"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    const-string/jumbo v3, "from="

    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 278
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_1

    .line 283
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 284
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerHidden()V

    .line 276
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 279
    goto :goto_0
.end method

.method public onBouncerShown()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 265
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 266
    const-string/jumbo v2, "onBouncerShown"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    const-string/jumbo v3, "from="

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 266
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-nez v0, :cond_1

    .line 271
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 272
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerShown()V

    .line 264
    :cond_1
    return-void

    .line 267
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraHintStarted()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraHintStarted()V

    .line 380
    return-void
.end method

.method public onCameraOn()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraOn()V

    .line 352
    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceHintStarted()V

    .line 384
    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceOn()V

    .line 356
    return-void
.end method

.method public onNotificationActive()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationActive()V

    .line 312
    return-void
.end method

.method public onNotificationDismissed()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDismissed()V

    .line 336
    return-void
.end method

.method public onNotificationDoubleTap()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDoubleTap()V

    .line 316
    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 2

    .prologue
    .line 341
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v0, "onNotificatonStartDismissing"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDismissing()V

    .line 340
    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 2

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v0, "onNotificatonStartDraggingDown"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDraggingDown()V

    .line 324
    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDismissing()V

    .line 348
    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDraggingDown()V

    .line 332
    return-void
.end method

.method public onQsDown()V
    .locals 2

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 290
    const-string/jumbo v0, "onQsDown"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onQsDown()V

    .line 288
    return-void
.end method

.method public onScreenOff()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v2, "onScreenOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string/jumbo v3, "from="

    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 248
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOff()V

    .line 253
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 254
    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    .line 246
    return-void

    :cond_1
    move v0, v1

    .line 249
    goto :goto_0
.end method

.method public onScreenOnFromTouch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 235
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v2, "onScreenOnFromTouch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    const-string/jumbo v3, "from="

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 236
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOnFromTouch()V

    .line 234
    :cond_1
    return-void

    .line 237
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurningOn()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 223
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 224
    const-string/jumbo v2, "onScreenTurningOn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    const-string/jumbo v3, "from="

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 224
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenTurningOn()V

    .line 222
    :cond_1
    return-void

    .line 225
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 193
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSucccessfulUnlock()V
    .locals 2

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 259
    const-string/jumbo v0, "onSucccessfulUnlock"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onSucccessfulUnlock()V

    .line 257
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/analytics/DataCollector;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onTrackingStarted()V
    .locals 2

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 302
    const-string/jumbo v0, "onTrackingStarted"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStarted()V

    .line 300
    return-void
.end method

.method public onTrackingStopped()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStopped()V

    .line 308
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onUnlockHintStarted()V

    .line 376
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationExpanded()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->setNotificationExpanded()V

    .line 320
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->setQsExpanded(Z)V

    .line 296
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 208
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v0, "setStatusBarState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string/jumbo v2, "from="

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    const-string/jumbo v2, " to="

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    iput p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    .line 207
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    goto :goto_0
.end method

.method public shouldEnforceBouncer()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    return v0
.end method
