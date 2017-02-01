.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/view/View;

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 123
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 145
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 154
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 157
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 119
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_timeout_pin:I

    return v0

    .line 109
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_restart_pin:I

    return v0

    .line 111
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_timeout_pin:I

    return v0

    .line 113
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_device_admin:I

    return v0

    .line 115
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$string;->kg_prompt_reason_user_request:I

    return v0

    .line 117
    :pswitch_4
    const/4 v0, 0x0

    return v0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setSelected(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 187
    sget v0, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 201
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 225
    sget v0, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    .line 226
    sget v0, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    .line 227
    sget v0, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    .line 228
    sget v0, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    .line 229
    sget v0, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    .line 230
    sget v0, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    .line 231
    sget v0, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    .line 232
    sget v0, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    .line 233
    sget v0, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    .line 234
    sget v0, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 237
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 173
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 253
    :cond_0
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    .line 87
    return v2

    .line 88
    :cond_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    .line 90
    return v2

    .line 92
    :cond_1
    const/4 v1, 0x7

    if-lt p1, v1, :cond_2

    const/16 v1, 0x10

    if-gt p1, v1, :cond_2

    .line 93
    add-int/lit8 v0, p1, -0x7

    .line 94
    .local v0, "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    .line 95
    return v2

    .line 97
    .end local v0    # "number":I
    :cond_2
    const/16 v1, 0x90

    if-lt p1, v1, :cond_3

    const/16 v1, 0x99

    if-gt p1, v1, :cond_3

    .line 98
    add-int/lit16 v0, p1, -0x90

    .line 99
    .restart local v0    # "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    .line 100
    return v2

    .line 102
    .end local v0    # "number":I
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->doHapticKeyClick()V

    .line 245
    :cond_0
    return v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 57
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 55
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "announce"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    .line 163
    return-void
.end method

.method protected resetState()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 67
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    return-void
.end method
