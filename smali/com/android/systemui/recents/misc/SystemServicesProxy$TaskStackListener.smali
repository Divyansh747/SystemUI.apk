.class public abstract Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskStackListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onActivityPinned()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onPinnedActivityRestartAttempt()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method
