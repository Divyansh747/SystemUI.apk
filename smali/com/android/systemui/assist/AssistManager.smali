.class public Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistManager$1;,
        Lcom/android/systemui/assist/AssistManager$2;
    }
.end annotation


# instance fields
.field private final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field protected final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field protected final mContext:Landroid/content/Context;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field private mView:Lcom/android/systemui/assist/AssistOrbContainer;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/assist/AssistManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/systemui/assist/AssistManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 58
    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 72
    new-instance v0, Lcom/android/systemui/assist/AssistManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    .line 84
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 85
    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V

    .line 80
    return-void
.end method

.method private getAssistInfo()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 150
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 151
    const/4 v1, -0x1

    .line 153
    const/16 v3, 0x7f1

    .line 154
    const/16 v4, 0x118

    .line 157
    const/4 v5, -0x3

    .line 150
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 158
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 161
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    const-string/jumbo v1, "AssistPreviewPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 165
    return-object v0
.end method

.method private isVoiceSessionRunning()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->isSessionRunning()Z

    move-result v0

    return v0
.end method

.method private maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "assistComponent"    # Landroid/content/ComponentName;
    .param p2, "isService"    # Z

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->getOrb()Lcom/android/systemui/assist/AssistOrbView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->getLogo()Landroid/widget/ImageView;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.action_assist_icon"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/assist/AssistManager;->replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 247
    return-void
.end method

.method private showOrb(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "assistComponent"    # Landroid/content/ComponentName;
    .param p2, "isService"    # Z

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    .line 168
    return-void
.end method

.method private startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "assistComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 183
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    return-void

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    .line 191
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 192
    const-string/jumbo v5, "assist_structure_enabled"

    const/4 v6, 0x1

    const/4 v7, -0x2

    .line 191
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 194
    .local v3, "structureEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    invoke-virtual {v4, v3}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 197
    return-void

    .line 191
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "structureEnabled":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "structureEnabled":Z
    goto :goto_0

    .line 199
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 202
    if-eqz v3, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 207
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 208
    const v5, 0x7f0500ba

    const v6, 0x7f0500bb

    .line 207
    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 209
    .local v2, "opts":Landroid/app/ActivityOptions;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    new-instance v4, Lcom/android/systemui/assist/AssistManager$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "AssistManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "assistComponent"    # Landroid/content/ComponentName;
    .param p3, "isService"    # Z

    .prologue
    .line 175
    if-eqz p3, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startVoiceInteractor(Landroid/os/Bundle;)V

    .line 174
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private startVoiceInteractor(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 224
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public canVoiceAssistBeLaunchedFromKeyguard()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public getVoiceInteractorComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public hideAssist()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    .line 145
    return-void
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->launchVoiceAssistFromKeyguard()V

    .line 227
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "visible":Z
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistOrbContainer;->isShowing()Z

    move-result v1

    .line 109
    .local v1, "visible":Z
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 112
    .end local v1    # "visible":Z
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 113
    const v3, 0x7f04001a

    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistOrbContainer;

    iput-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    .line 116
    const/16 v3, 0x700

    .line 115
    invoke-virtual {v2, v3}, Lcom/android/systemui/assist/AssistOrbContainer;->setSystemUiVisibility(I)V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 119
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    if-eqz v1, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    .line 105
    :cond_1
    return-void
.end method

.method public onLockscreenShown()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->onLockscreenShown()V

    .line 295
    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 92
    new-instance v1, Lcom/android/systemui/assist/AssistManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 90
    return-void
.end method

.method public replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isService"    # Z

    .prologue
    const/4 v9, 0x0

    .line 257
    if-eqz p2, :cond_1

    .line 259
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 261
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p4, :cond_0

    .line 263
    const/16 v6, 0x80

    .line 262
    invoke-virtual {v4, p2, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 266
    .local v2, "metaData":Landroid/os/Bundle;
    :goto_0
    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, "iconResId":I
    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 269
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 271
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    return-void

    .line 265
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    const/16 v6, 0x80

    .line 264
    invoke-virtual {v4, p2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "metaData":Landroid/os/Bundle;
    goto :goto_0

    .line 278
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 279
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to swap drawable from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 280
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .end local v3    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_1
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    return-void

    .line 275
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "AssistManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Assistant component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 277
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 276
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 277
    const-string/jumbo v8, " not found"

    .line 276
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected shouldShowOrb()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public showDisclosure()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistDisclosure;->postShow()V

    .line 291
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object v0

    .line 131
    .local v0, "assistComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 136
    .local v1, "isService":Z
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->isVoiceSessionRunning()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->shouldShowOrb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/assist/AssistManager;->showOrb(Landroid/content/ComponentName;Z)V

    .line 138
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 139
    const-wide/16 v2, 0x9c4

    .line 138
    :goto_0
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/systemui/assist/AssistOrbContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V

    .line 129
    return-void

    .line 140
    :cond_3
    const-wide/16 v2, 0x3e8

    goto :goto_0
.end method
