.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$Receiver;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field private mScreenOffTime:J

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/PowerUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerUI;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 50
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 52
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 53
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 41
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 113
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v2, :cond_0

    .line 114
    const/4 v2, 0x1

    return v2

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    .line 117
    return v3

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 120
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 121
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 122
    rsub-int/lit8 v2, v1, -0x1

    return v2

    .line 120
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 125
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 215
    const-string/jumbo v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 227
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 228
    const-string/jumbo v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 230
    const-string/jumbo v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 233
    const-string/jumbo v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    const-string/jumbo v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    .line 234
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 236
    const-string/jumbo v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    .line 212
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 62
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 63
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 65
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 71
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_power_trigger_level"

    .line 72
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 74
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 72
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 76
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 60
    return-void

    .line 62
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_0
.end method

.method updateBatteryWarningLevels()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 80
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 81
    const v5, 0x10e0056

    .line 80
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 83
    .local v0, "critLevel":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 84
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 85
    const v5, 0x10e0058

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 87
    .local v1, "defWarnLevel":I
    const-string/jumbo v4, "low_power_trigger_level"

    .line 86
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, "warnLevel":I
    if-nez v3, :cond_0

    .line 89
    move v3, v1

    .line 91
    :cond_0
    if-ge v3, v0, :cond_1

    .line 92
    move v3, v0

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    .line 96
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    .line 97
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    .line 98
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 99
    const v6, 0x10e0059

    .line 98
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 97
    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 79
    return-void
.end method
