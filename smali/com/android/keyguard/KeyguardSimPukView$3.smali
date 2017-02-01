.class Lcom/android/keyguard/KeyguardSimPukView$3;
.super Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->showDefaultMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p2, "this$0_1"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p3, "$anonymous0"    # Ljava/lang/String;
    .param p4, "$anonymous1"    # Ljava/lang/String;
    .param p5, "$anonymous2"    # I

    .prologue
    .line 415
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(II)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v3, 0x1

    .line 417
    const-string/jumbo v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimCheckResponse  dummy One result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    const-string/jumbo v2, " attemptsRemaining="

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-ltz p2, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, p2}, Lcom/android/keyguard/KeyguardSimPukView;->-set3(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 422
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1, p2, v3}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap3(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 416
    :cond_0
    return-void
.end method
