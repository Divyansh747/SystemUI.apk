.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

.field final synthetic val$opts:Landroid/app/ActivityOptions;

.field final synthetic val$stack:Lcom/android/systemui/recents/model/TaskStack;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;

.field final synthetic val$taskView:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$transitionFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .param p2, "val$stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "val$task"    # Lcom/android/systemui/recents/model/Task;
    .param p4, "val$taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p5, "val$opts"    # Landroid/app/ActivityOptions;
    .param p6, "val$transitionFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p7, "val$animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$stack:Lcom/android/systemui/recents/model/TaskStack;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p5, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$opts:Landroid/app/ActivityOptions;

    iput-object p6, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$transitionFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object p7, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$stack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$opts:Landroid/app/ActivityOptions;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$transitionFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 161
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 160
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-wrap1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 159
    return-void
.end method
