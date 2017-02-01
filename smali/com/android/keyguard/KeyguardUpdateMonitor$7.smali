.class Lcom/android/keyguard/KeyguardUpdateMonitor$7;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap5(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 817
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap8(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 812
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap6(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 795
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap9(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    .line 807
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .prologue
    .line 801
    const-string/jumbo v0, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap7(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 803
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 800
    return-void
.end method
