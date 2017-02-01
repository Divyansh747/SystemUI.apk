.class public Lcom/android/systemui/qs/external/TileLifecycleManager;
.super Landroid/content/BroadcastReceiver;
.source "TileLifecycleManager.java"

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;
    }
.end annotation


# instance fields
.field private mBindTryCount:I

.field private mBound:Z

.field private mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

.field private mClickBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mIsBound:Z

.field private mListening:Z

.field private mQueuedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReceiverRegistered:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field private mUnbindImmediate:Z

.field private final mUser:Landroid/os/UserHandle;

.field private mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/external/TileLifecycleManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    return v0
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "service"    # Landroid/service/quicksettings/IQSService;
    .param p4, "tile"    # Landroid/service/quicksettings/Tile;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    .line 93
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "service"

    invoke-interface {p3}, Landroid/service/quicksettings/IQSService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 98
    iput-object p6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 92
    return-void
.end method

.method private checkComponentState()Z
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isPackageAvailable(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isComponentAvailable(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x1

    return v1

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    .line 267
    const/4 v1, 0x0

    return v1
.end method

.method private handleDeath()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-nez v0, :cond_1

    return-void

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/external/TileLifecycleManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileLifecycleManager$1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    .line 259
    const-wide/16 v2, 0x3e8

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    :cond_2
    return-void
.end method

.method private handlePendingMessages()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v2

    .line 195
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 196
    .local v0, "queue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 202
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    .line 206
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-nez v1, :cond_7

    .line 209
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Managed to get click on non-listening state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    :goto_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-nez v1, :cond_8

    .line 218
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Managed to get unlock on non-listening state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_3
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 226
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-eqz v1, :cond_4

    .line 227
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Managed to get remove in listening state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 232
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    if-eqz v1, :cond_6

    .line 233
    iput-boolean v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 234
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 190
    :cond_6
    return-void

    .line 194
    .end local v0    # "queue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 212
    .restart local v0    # "queue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onClick(Landroid/os/IBinder;)V

    goto :goto_0

    .line 221
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onUnlockComplete()V

    goto :goto_1
.end method

.method private isComponentAvailable(Landroid/content/pm/PackageManager;)Z
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 318
    iget-object v6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/4 v7, 0x0

    .line 317
    invoke-interface {v4, v5, v7, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 320
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 321
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private isPackageAvailable(Landroid/content/pm/PackageManager;)Z
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v5, 0x0

    .line 328
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    const/4 v2, 0x1

    return v2

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "TileLifecycleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v5
.end method

.method public static isTileAdded(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 420
    const-string/jumbo v0, "tiles_prefs"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private queueMessage(I)V
    .locals 3
    .param p1, "message"    # I

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 339
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "added"    # Z

    .prologue
    .line 424
    const-string/jumbo v0, "tiles_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    return-void
.end method

.method private startPackageListening()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 274
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    .line 272
    return-void
.end method

.method private stopPackageListening()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    .line 283
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 406
    return-void
.end method

.method public flushMessagesAndUnbind()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 126
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public handleDestroy()V
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    .line 238
    :cond_0
    return-void
.end method

.method public hasPendingClick()Z
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isActiveTile()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 115
    const/16 v5, 0x2080

    .line 114
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 116
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "android.service.quicksettings.ACTIVE_TILE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 116
    :cond_0
    return v2

    .line 118
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method public onClick(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onClick(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    .line 386
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 296
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 298
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    return-void

    .line 303
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;->onTileChanged(Landroid/content/ComponentName;)V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    .line 307
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-eqz v2, :cond_2

    .line 310
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 294
    :cond_2
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 174
    iput v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 175
    new-instance v1, Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-static {p2}, Landroid/service/quicksettings/IQSTileService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;-><init>(Landroid/service/quicksettings/IQSTileService;)V

    .line 177
    .local v1, "wrapper":Lcom/android/systemui/qs/external/QSTileServiceWrapper;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handlePendingMessages()V

    .line 171
    return-void

    .line 178
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    .line 185
    return-void
.end method

.method public onStartListening()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onStartListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onStopListening()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onStopListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onTileAdded()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onTileAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onTileRemoved()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onTileRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public onUnlockComplete()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onUnlockComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    goto :goto_0
.end method

.method public setBindService(Z)V
    .locals 6
    .param p1, "bind"    # Z

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    if-eqz v1, :cond_0

    .line 135
    iput-boolean v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 136
    return-void

    .line 138
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    .line 139
    if-eqz p1, :cond_4

    .line 140
    iget v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    .line 143
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    return-void

    .line 149
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 153
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 152
    const v4, 0x2000001

    .line 151
    invoke-virtual {v1, v2, p0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_3
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TileLifecycleManager"

    const-string/jumbo v2, "Failed to bind to service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    iput-boolean v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_4
    iput v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 163
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    iput-boolean v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    goto :goto_0
.end method

.method public setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    .line 289
    return-void
.end method
