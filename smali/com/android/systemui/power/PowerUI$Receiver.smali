.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    .line 147
    .local v5, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v14, "level"

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->-set0(Lcom/android/systemui/power/PowerUI;I)I

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    .line 149
    .local v6, "oldBatteryStatus":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v14, "status"

    .line 150
    const/4 v15, 0x1

    .line 149
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->-set1(Lcom/android/systemui/power/PowerUI;I)I

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v9

    .line 152
    .local v9, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v14, "plugged"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->-set3(Lcom/android/systemui/power/PowerUI;I)I

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    .line 154
    .local v8, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v14, "invalid_charger"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->-set2(Lcom/android/systemui/power/PowerUI;I)I

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x1

    .line 157
    .local v12, "plugged":Z
    :goto_0
    if-eqz v9, :cond_2

    const/4 v10, 0x1

    .line 159
    .local v10, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13, v5}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v7

    .line 160
    .local v7, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v14}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v3

    .line 162
    .local v3, "bucket":I
    sget-boolean v13, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 163
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "buckets   ....."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get4(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 164
    const-string/jumbo v15, " .. "

    .line 163
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 164
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    .line 163
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 165
    const-string/jumbo v15, " .. "

    .line 163
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v15

    const/16 v16, 0x1

    aget v15, v15, v16

    .line 163
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "level          "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "status         "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "plugType       "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "invalidCharger "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "bucket         "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "plugged        "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " --> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v14}, Lcom/android/systemui/power/PowerUI;->-get0(Lcom/android/systemui/power/PowerUI;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v15}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v3, v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJ)V

    .line 175
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    if-eqz v13, :cond_3

    .line 176
    const-string/jumbo v13, "PowerUI"

    const-string/jumbo v14, "showing invalid charger warning"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 178
    return-void

    .line 156
    .end local v3    # "bucket":I
    .end local v7    # "oldBucket":I
    .end local v10    # "oldPlugged":Z
    .end local v12    # "plugged":Z
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "plugged":Z
    goto/16 :goto_0

    .line 157
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "oldPlugged":Z
    goto/16 :goto_1

    .line 179
    .restart local v3    # "bucket":I
    .restart local v7    # "oldBucket":I
    :cond_3
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    if-nez v13, :cond_7

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 186
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get7(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v4

    .line 187
    .local v4, "isPowerSaver":Z
    if-nez v12, :cond_5

    .line 188
    if-eqz v4, :cond_8

    .line 195
    :cond_5
    if-nez v4, :cond_6

    if-nez v12, :cond_6

    if-le v3, v7, :cond_b

    if-lez v3, :cond_b

    .line 196
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 143
    .end local v3    # "bucket":I
    .end local v4    # "isPowerSaver":Z
    .end local v5    # "oldBatteryLevel":I
    .end local v6    # "oldBatteryStatus":I
    .end local v7    # "oldBucket":I
    .end local v8    # "oldInvalidCharger":I
    .end local v9    # "oldPlugType":I
    .end local v10    # "oldPlugged":Z
    .end local v12    # "plugged":Z
    :goto_2
    return-void

    .line 181
    .restart local v3    # "bucket":I
    .restart local v5    # "oldBatteryLevel":I
    .restart local v6    # "oldBatteryStatus":I
    .restart local v7    # "oldBucket":I
    .restart local v8    # "oldInvalidCharger":I
    .restart local v9    # "oldPlugType":I
    .restart local v10    # "oldPlugged":Z
    .restart local v12    # "plugged":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 183
    return-void

    .line 189
    .restart local v4    # "isPowerSaver":Z
    :cond_8
    if-lt v3, v7, :cond_9

    .line 187
    if-eqz v10, :cond_5

    .line 190
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    .line 191
    if-gez v3, :cond_5

    .line 193
    if-ne v3, v7, :cond_a

    move v11, v10

    .line 194
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    invoke-interface {v13, v11}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto :goto_2

    .line 193
    :cond_a
    const/4 v11, 0x1

    .local v11, "playSound":Z
    goto :goto_3

    .line 198
    .end local v11    # "playSound":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto :goto_2

    .line 200
    .end local v3    # "bucket":I
    .end local v4    # "isPowerSaver":Z
    .end local v5    # "oldBatteryLevel":I
    .end local v6    # "oldBatteryStatus":I
    .end local v7    # "oldBucket":I
    .end local v8    # "oldInvalidCharger":I
    .end local v9    # "oldPlugType":I
    .end local v10    # "oldPlugged":Z
    .end local v12    # "plugged":Z
    :cond_c
    const-string/jumbo v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/android/systemui/power/PowerUI;->-set4(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_2

    .line 202
    :cond_d
    const-string/jumbo v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v14, -0x1

    invoke-static {v13, v14, v15}, Lcom/android/systemui/power/PowerUI;->-set4(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_2

    .line 204
    :cond_e
    const-string/jumbo v13, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v13}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/systemui/power/PowerUI$WarningsUI;->userSwitched()V

    goto :goto_2

    .line 207
    :cond_f
    const-string/jumbo v13, "PowerUI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unknown intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
