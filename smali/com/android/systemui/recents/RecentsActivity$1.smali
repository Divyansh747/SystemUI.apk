.class Lcom/android/systemui/recents/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 174
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeIfVisible(Z)Z

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string/jumbo v9, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 180
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 181
    const-string/jumbo v10, "OverviewLastStackTaskActiveTime"

    const-wide/16 v12, -0x1

    .line 180
    invoke-static {v9, v10, v12, v13}, Lcom/android/systemui/Prefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 182
    .local v6, "oldLastStackActiveTime":J
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    .local v2, "currentTime":J
    cmp-long v9, v2, v6

    if-gez v9, :cond_0

    .line 189
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    .line 190
    .local v4, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 191
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getRawTasks()Ljava/util/List;

    move-result-object v8

    .line 192
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 193
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 194
    .local v5, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-wide v10, v5, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v9, v2, v10

    if-gtz v9, :cond_2

    iget-wide v10, v5, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v9, v10, v6

    if-gez v9, :cond_2

    .line 196
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v9

    iget v10, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 192
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 199
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 200
    const-string/jumbo v10, "OverviewLastStackTaskActiveTime"

    .line 199
    invoke-static {v9, v10, v2, v3}, Lcom/android/systemui/Prefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method
