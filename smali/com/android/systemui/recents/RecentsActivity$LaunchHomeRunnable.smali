.class Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchHomeRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$-void_run__LambdaImpl0;
    }
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 145
    iput-object p3, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    .line 143
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_recents_RecentsActivity$LaunchHomeRunnable_lambda$1()V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    .line 153
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-nez v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 155
    const v2, 0x7f0500b8

    const v3, 0x7f0500b9

    .line 154
    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->-get0(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$-void_run__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$-void_run__LambdaImpl0;-><init>(Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RecentsActivity"

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Home"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0f02dd

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
