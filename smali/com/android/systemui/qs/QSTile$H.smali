.class public final Lcom/android/systemui/qs/QSTile$H;
.super Landroid/os/Handler;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 350
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    .local p1, "this$0":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 351
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSTile;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$H;, "Lcom/android/systemui/qs/QSTile<TTState;>.H;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 356
    const/4 v2, 0x0

    .line 358
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v4, :cond_0

    .line 359
    const-string/jumbo v2, "handleAddCallback"

    .line 360
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/QSTile;->-wrap0(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 355
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 361
    .local v2, "name":Ljava/lang/String;
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 362
    const-string/jumbo v2, "handleRemoveCallbacks"

    .line 363
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile;->-wrap2(Lcom/android/systemui/qs/QSTile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 411
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "error":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, v0, v3}, Lcom/android/systemui/qs/QSTile$Host;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 364
    .end local v0    # "error":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Throwable;
    .local v2, "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    .line 365
    const-string/jumbo v2, "handleRemoveCallback"

    .line 366
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/QSTile;->-wrap1(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V

    goto :goto_0

    .line 367
    .local v2, "name":Ljava/lang/String;
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 368
    const-string/jumbo v2, "handleClick"

    .line 369
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-boolean v4, v4, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v4, :cond_3

    .line 371
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v5, v5, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 370
    invoke-static {v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    .line 372
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    goto :goto_0

    .line 374
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/qs/QSTile;->-set0(Lcom/android/systemui/qs/QSTile;Z)Z

    .line 375
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleClick()V

    goto :goto_0

    .line 377
    .local v2, "name":Ljava/lang/String;
    :cond_4
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 378
    const-string/jumbo v2, "handleSecondaryClick"

    .line 379
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleSecondaryClick()V

    goto/16 :goto_0

    .line 380
    .local v2, "name":Ljava/lang/String;
    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 381
    const-string/jumbo v2, "handleLongClick"

    .line 382
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleLongClick()V

    goto/16 :goto_0

    .line 383
    .local v2, "name":Ljava/lang/String;
    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 384
    const-string/jumbo v2, "handleRefreshState"

    .line 385
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 386
    .local v2, "name":Ljava/lang/String;
    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9

    .line 387
    const-string/jumbo v2, "handleShowDetail"

    .line 388
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_8

    :goto_1
    invoke-static {v6, v4}, Lcom/android/systemui/qs/QSTile;->-wrap4(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    .line 389
    .local v2, "name":Ljava/lang/String;
    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_a

    .line 390
    const-string/jumbo v2, "handleUserSwitch"

    .line 391
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 392
    .local v2, "name":Ljava/lang/String;
    :cond_a
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    .line 393
    const-string/jumbo v2, "handleToggleStateChanged"

    .line 394
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_b

    :goto_2
    invoke-static {v6, v4}, Lcom/android/systemui/qs/QSTile;->-wrap5(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2

    .line 395
    .local v2, "name":Ljava/lang/String;
    :cond_c
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_e

    .line 396
    const-string/jumbo v2, "handleScanStateChanged"

    .line 397
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_d

    :goto_3
    invoke-static {v6, v4}, Lcom/android/systemui/qs/QSTile;->-wrap3(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_3

    .line 398
    .local v2, "name":Ljava/lang/String;
    :cond_e
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_f

    .line 399
    const-string/jumbo v2, "handleDestroy"

    .line 400
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    goto/16 :goto_0

    .line 401
    .local v2, "name":Ljava/lang/String;
    :cond_f
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_10

    .line 402
    const-string/jumbo v2, "handleClearState"

    .line 403
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleClearState()V

    goto/16 :goto_0

    .line 404
    .local v2, "name":Ljava/lang/String;
    :cond_10
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_12

    .line 405
    const-string/jumbo v2, "setListening"

    .line 406
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_11

    :goto_4
    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    goto/16 :goto_0

    :cond_11
    move v4, v5

    goto :goto_4

    .line 408
    .local v2, "name":Ljava/lang/String;
    :cond_12
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
