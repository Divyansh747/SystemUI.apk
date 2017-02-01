.class Lcom/android/systemui/recents/misc/SystemServicesProxy$1;
.super Landroid/app/ITaskStackListener$Stub;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void
.end method

.method public onActivityPinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    return-void
.end method

.method public onPinnedActivityRestartAttempt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 175
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 181
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$1;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method
