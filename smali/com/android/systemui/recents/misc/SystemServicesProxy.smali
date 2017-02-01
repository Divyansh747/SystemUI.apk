.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/SystemServicesProxy$1;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$H;,
        Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
    }
.end annotation


# static fields
.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# instance fields
.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistComponent:Landroid/content/ComponentName;

.field mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field mDisplay:Landroid/view/Display;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field private final mHandler:Landroid/os/Handler;

.field mHasFreeformWorkspaceSupport:Z

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mIsSafeMode:Z

.field mIwm:Landroid/view/IWindowManager;

.field mPm:Landroid/content/pm/PackageManager;

.field mRecentsPackage:Ljava/lang/String;

.field private mTaskStackListener:Landroid/app/ITaskStackListener$Stub;

.field private mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field mUm:Landroid/os/UserManager;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 104
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 105
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    .line 111
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.tv.pip.PipOnboardingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    const-string/jumbo v1, "com.android.systemui.tv.pip.PipMenuActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy$H;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/misc/SystemServicesProxy$H;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v4, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Landroid/app/ITaskStackListener$Stub;

    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    .line 205
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    .line 206
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 207
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 209
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    .line 210
    new-instance v4, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 211
    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    .line 212
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    .line 213
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    .line 214
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    .line 217
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.freeform_window_management"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 219
    const-string/jumbo v7, "enable_freeform_support"

    .line 218
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 216
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    .line 220
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 224
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    .line 225
    .local v3, "wId":I
    const v0, 0x1050001

    .line 226
    .local v0, "hId":I
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    .line 227
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    .line 230
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    .line 231
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 232
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    .line 236
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    .line 245
    const-string/jumbo v4, "uimode"

    .line 244
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 246
    .local v2, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 247
    sget-object v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    .line 248
    const v5, 0x7f0b0115

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 204
    :goto_1
    return-void

    .end local v0    # "hId":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "uiModeManager":Landroid/app/UiModeManager;
    .end local v3    # "wId":I
    :cond_0
    move v4, v5

    .line 217
    goto :goto_0

    :cond_1
    move v4, v6

    .line 218
    goto :goto_0

    .line 250
    .restart local v0    # "hId":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "uiModeManager":Landroid/app/UiModeManager;
    .restart local v3    # "wId":I
    :cond_2
    sget-object v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    .line 251
    const v5, 0x7f0b0111

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .prologue
    .line 806
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 809
    :cond_0
    return-object p1
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 847
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 850
    :cond_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 266
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static isFreeformStack(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 494
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHomeStack(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 473
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public cancelThumbnailTransition(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 563
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->cancelTaskThumbnailTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelWindowTransition(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 550
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->cancelTaskWindowTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public endProlongedAnimations()V
    .locals 2

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 1039
    return-void

    .line 1042
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->endProlongedAnimations()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 674
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    return-object v3

    .line 678
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x80

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 681
    return-object v3
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 753
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    return-object v2

    .line 760
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 761
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedApplicationIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    return-object v2

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 777
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    return-object v1

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 740
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "activityLabel":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "applicationLabel":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "badgedApplicationLabel":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v2    # "badgedApplicationLabel":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 744
    .restart local v2    # "badgedApplicationLabel":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 745
    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 744
    const v4, 0x7f0f024b

    invoke-virtual {p3, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "userId"    # I
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 791
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    .local v0, "tdIcon":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 794
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {v1, p2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 796
    :cond_0
    if-eqz v0, :cond_1

    .line 797
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 799
    :cond_1
    return-object v2
.end method

.method public getCurrentUser()I
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public getDeviceSmallestWidth()I
    .locals 3

    .prologue
    .line 944
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 946
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 947
    .local v1, "smallestSizeRange":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 948
    .local v0, "largestSizeRange":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 949
    iget v2, v1, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 956
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 957
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_0

    return-object v0

    .line 959
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 960
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 961
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 962
    return-object v0
.end method

.method public getDockedDividerSize(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1062
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1064
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050023

    .line 1063
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1066
    .local v1, "dividerWindowWidth":I
    const v3, 0x1050024

    .line 1065
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1067
    .local v0, "dividerInsets":I
    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v1, v3

    return v3
.end method

.method public getProcessUser()I
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    return v0
.end method

.method public getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;
    .locals 11
    .param p1, "numLatestTasks"    # I
    .param p2, "userId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    .local p4, "quietProfileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    return-object v9

    .line 320
    :cond_0
    const/16 v5, 0xa

    .line 321
    .local v5, "minNumTasksToQuery":I
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 322
    .local v6, "numTasksToQuery":I
    const/16 v1, 0x3e

    .line 327
    .local v1, "flags":I
    if-eqz p3, :cond_1

    .line 328
    const/16 v1, 0x3f

    .line 330
    :cond_1
    const/4 v8, 0x0

    .line 332
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v9, v6, v1, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 338
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    if-nez v8, :cond_2

    .line 339
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    return-object v9

    .line 333
    .restart local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SystemServicesProxy"

    const-string/jumbo v10, "Failed to get recent tasks"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    const/4 v3, 0x1

    .line 343
    .local v3, "isFirstValidTask":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 344
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 345
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 351
    .local v7, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 352
    sget-object v9, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    iget-object v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 351
    if-eqz v9, :cond_4

    .line 353
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 359
    :cond_4
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    .line 360
    const/high16 v10, 0x800000

    .line 359
    if-ne v9, v10, :cond_6

    const/4 v2, 0x1

    .line 361
    .local v2, "isExcluded":Z
    :goto_2
    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p4, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 362
    .local v2, "isExcluded":Z
    if-eqz v2, :cond_5

    if-eqz v3, :cond_7

    if-eqz p3, :cond_7

    .line 366
    :cond_5
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 359
    .end local v2    # "isExcluded":Z
    :cond_6
    const/4 v2, 0x0

    .local v2, "isExcluded":Z
    goto :goto_2

    .line 363
    .local v2, "isExcluded":Z
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 369
    .end local v2    # "isExcluded":Z
    .end local v7    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 376
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 377
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    return-object v3

    .line 378
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v1
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outStableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 1079
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getStableInsets(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :goto_0
    return-void

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 929
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 930
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getTaskThumbnail(I)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 8
    .param p1, "taskId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-object v7

    .line 572
    :cond_0
    new-instance v6, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    .line 582
    .local v6, "thumbnailData":Lcom/android/systemui/recents/model/ThumbnailData;
    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(ILcom/android/systemui/recents/model/ThumbnailData;)V

    .line 583
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 588
    iget-object v0, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 591
    iget-object v2, v6, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    .line 590
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    const-string/jumbo v0, "SystemServicesProxy"

    const-string/jumbo v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    return-object v6
.end method

.method public getThumbnail(ILcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "thumbnailDataOut"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    const/4 v6, 0x0

    .line 603
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v4, :cond_0

    .line 604
    return-void

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v2

    .line 608
    .local v2, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    if-nez v2, :cond_1

    .line 609
    return-void

    .line 612
    :cond_1
    iget-object v3, v2, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 613
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, v2, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 614
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 615
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 616
    sget-object v5, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 615
    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 618
    :cond_2
    if-eqz v0, :cond_3

    .line 620
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_3
    :goto_0
    iput-object v3, p2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 625
    iget-object v4, v2, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput-object v4, p2, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 602
    return-void

    .line 621
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 969
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 970
    .local v2, "windowRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v3, :cond_0

    return-object v2

    .line 974
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 975
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v1, :cond_1

    .line 976
    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :cond_1
    return-object v2

    .line 978
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    return-object v2

    .line 980
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 981
    return-object v2
.end method

.method public hasDockedTask()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 501
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v5, :cond_0

    return v7

    .line 503
    :cond_0
    const/4 v3, 0x0

    .line 505
    .local v3, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 510
    .end local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    if-eqz v3, :cond_4

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v4

    .line 512
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 513
    .local v1, "hasUserTask":Z
    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    if-eqz v1, :cond_2

    .line 516
    :cond_1
    return v1

    .line 506
    .end local v1    # "hasUserTask":Z
    .end local v2    # "i":I
    .end local v4    # "userId":I
    .restart local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    .restart local v1    # "hasUserTask":Z
    .restart local v2    # "i":I
    .restart local v4    # "userId":I
    :cond_2
    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v5, v5, v2

    if-ne v5, v4, :cond_3

    const/4 v1, 0x1

    .line 513
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 514
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 518
    .end local v1    # "hasUserTask":Z
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :cond_4
    return v7
.end method

.method public hasFreeformWorkspaceSupport()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mHasFreeformWorkspaceSupport:Z

    return v0
.end method

.method public hasSoftNavigationBar()Z
    .locals 2

    .prologue
    .line 526
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 530
    const/4 v1, 0x0

    return v1
.end method

.method public hasTransposedNavigationBar()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 538
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 539
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 540
    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isBlackListedActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 273
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sRecentsBlacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInSafeMode()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIsSafeMode:Z

    return v0
.end method

.method public isRecentsActivityVisible()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v0

    return v0
.end method

.method public isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    .locals 10
    .param p1, "isHomeStackVisible"    # Landroid/util/MutableBoolean;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 397
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v6, :cond_0

    return v7

    .line 400
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 401
    const/4 v9, 0x0

    .line 400
    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    .line 402
    .local v4, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 403
    const/4 v9, 0x1

    .line 402
    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 404
    .local v1, "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 405
    .local v5, "topActivity":Landroid/content/ComponentName;
    iget-boolean v2, v4, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 406
    .local v2, "homeStackVisibleNotOccluded":Z
    if-eqz v1, :cond_1

    .line 407
    iget-boolean v6, v1, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v6, :cond_5

    .line 408
    iget v6, v1, Landroid/app/ActivityManager$StackInfo;->position:I

    iget v9, v4, Landroid/app/ActivityManager$StackInfo;->position:I

    if-le v6, v9, :cond_4

    const/4 v3, 0x1

    .line 409
    .local v3, "isFullscreenStackOccludingHome":Z
    :goto_0
    if-eqz v3, :cond_6

    move v6, v7

    :goto_1
    and-int/2addr v2, v6

    .line 411
    .end local v3    # "isFullscreenStackOccludingHome":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 412
    iput-boolean v2, p1, Landroid/util/MutableBoolean;->value:Z

    .line 414
    :cond_2
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    .line 415
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "com.android.systemui"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 414
    if-eqz v6, :cond_7

    .line 416
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 417
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "com.android.systemui.recents.tv.RecentsTvActivity"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 414
    :cond_3
    :goto_2
    return v8

    .line 408
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isFullscreenStackOccludingHome":Z
    goto :goto_0

    .line 407
    .end local v3    # "isFullscreenStackOccludingHome":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isFullscreenStackOccludingHome":Z
    goto :goto_0

    :cond_6
    move v6, v8

    .line 409
    goto :goto_1

    .end local v3    # "isFullscreenStackOccludingHome":Z
    :cond_7
    move v8, v7

    .line 414
    goto :goto_2

    .line 418
    .end local v1    # "fullscreenStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "homeStackVisibleNotOccluded":Z
    .end local v4    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "topActivity":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 421
    return v7
.end method

.method public isScreenPinningActive()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 908
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return v2

    .line 911
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isSystemUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 875
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 899
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_0

    return v0

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public moveTaskToDockedStack(IILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I
    .param p3, "initialBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 457
    return v8

    .line 461
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v3, 0x1

    .line 462
    const/4 v4, 0x0

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 461
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 463
    :catch_0
    move-exception v7

    .line 464
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 466
    return v8
.end method

.method public moveTaskToStack(II)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 635
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->positionTaskInStack(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 4
    .param p1, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "animStartedListener"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .prologue
    .line 1089
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowManager;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    return-void

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to override transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    return-void

    .line 1052
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    return-void

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mTaskStackListener:Landroid/app/ITaskStackListener$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :cond_1
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Failed to call registerTaskStackListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTask(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy$2;-><init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    return-void
.end method

.method public requestKeyboardShortcuts(Landroid/content/Context;Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;
    .param p3, "deviceId"    # I

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0, p2, p3}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 1071
    return-void
.end method

.method public sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRecentsVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTvPipVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1113
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setTvPipVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "Unable to reach window manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 988
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-eqz v2, :cond_3

    .line 990
    :try_start_0
    iget v2, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 993
    if-nez p4, :cond_0

    .line 994
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    .line 996
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 998
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 999
    iget v3, p2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-nez p4, :cond_2

    .line 998
    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 1000
    return v4

    .line 999
    :cond_2
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SystemServicesProxy"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    const v3, 0x7f0f02dd

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return v5
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    return-void

    .line 1013
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startTaskInDockedMode(II)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "createMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 440
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    return v5

    .line 443
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 444
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setDockCreateMode(I)V

    .line 445
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 446
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    const/4 v2, 0x1

    return v2

    .line 448
    .end local v1    # "options":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemServicesProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to dock task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with createMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    return v5
.end method
