.class Lcom/android/systemui/recents/views/RecentsView$8;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "val$postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$8;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$8;->val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$8;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$8;->val$postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 719
    return-void
.end method
