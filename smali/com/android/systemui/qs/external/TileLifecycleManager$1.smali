.class Lcom/android/systemui/qs/external/TileLifecycleManager$1;
.super Ljava/lang/Object;
.source "TileLifecycleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileLifecycleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileLifecycleManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/TileLifecycleManager;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$1;->this$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$1;->this$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->-get0(Lcom/android/systemui/qs/external/TileLifecycleManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager$1;->this$0:Lcom/android/systemui/qs/external/TileLifecycleManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    .line 253
    :cond_0
    return-void
.end method
