.class public Lcom/android/systemui/qs/tiles/CellularTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;,
        Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field static final CELLULAR_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 43
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 42
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 49
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    .line 53
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 55
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    .line 51
    return-void
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 169
    if-nez p0, :cond_0

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 171
    .local v0, "length":I
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    :cond_1
    return-object p0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSIconView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v0, Lcom/android/systemui/qs/SignalTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x73

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CellularTile;->showDetail(Z)V

    .line 88
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 11
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v5, 0x7f0200e6

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v0, p2

    .line 104
    check-cast v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .line 105
    .local v0, "cb":Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    if-nez v0, :cond_0

    .line 106
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->-get0(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-result-object v0

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 110
    .local v3, "r":Landroid/content/res/Resources;
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v6, :cond_2

    move v2, v5

    .line 114
    .local v2, "iconId":I
    :goto_0
    invoke-static {v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 115
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 116
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-nez v6, :cond_6

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    :goto_1
    if-nez v6, :cond_8

    .line 117
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v6, :cond_8

    .line 118
    const v6, 0x7f0d0031

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    .line 116
    :goto_2
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->isShowRoaming:Z

    .line 119
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->subId:I

    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->subId:I

    .line 120
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->autoMirrorDrawable:Z

    .line 121
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_a

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v6, :cond_a

    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    :goto_4
    iput v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->overlayIconId:I

    .line 122
    if-eq v2, v5, :cond_b

    move v5, v8

    :goto_5
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->filter:Z

    .line 123
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    :goto_6
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityIn:Z

    .line 124
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_d

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    :goto_7
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->activityOut:Z

    .line 126
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_e

    .line 127
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    :goto_8
    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 130
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_f

    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v5, :cond_f

    .line 131
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 134
    .local v4, "signalContentDesc":Ljava/lang/String;
    :goto_9
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v5, :cond_10

    .line 135
    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    .line 149
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const v8, 0x7f0f0413

    .line 149
    invoke-virtual {v3, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    .line 152
    const-class v5, Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 151
    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 153
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v7

    .line 153
    :cond_1
    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$SignalState;->value:Z

    .line 103
    return-void

    .line 111
    .end local v2    # "iconId":I
    .end local v4    # "signalContentDesc":Ljava/lang/String;
    :cond_2
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v6, :cond_4

    :cond_3
    const v2, 0x7f0200f9

    goto/16 :goto_0

    .line 112
    :cond_4
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v6, :cond_5

    iget v2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    goto/16 :goto_0

    .line 113
    :cond_5
    const v2, 0x7f020109

    goto/16 :goto_0

    .restart local v2    # "iconId":I
    :cond_6
    move v6, v8

    .line 116
    goto/16 :goto_1

    :cond_7
    move v6, v8

    .line 118
    goto/16 :goto_2

    :cond_8
    move v6, v7

    .line 116
    goto/16 :goto_2

    :cond_9
    move v6, v8

    .line 120
    goto/16 :goto_3

    :cond_a
    move v6, v7

    .line 121
    goto/16 :goto_4

    :cond_b
    move v5, v7

    .line 122
    goto/16 :goto_5

    :cond_c
    move v5, v7

    .line 123
    goto/16 :goto_6

    :cond_d
    move v5, v7

    .line 124
    goto/16 :goto_7

    .line 128
    :cond_e
    const v5, 0x7f0f02b0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 132
    :cond_f
    const v5, 0x7f0f0216

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "signalContentDesc":Ljava/lang/String;
    goto/16 :goto_9

    .line 137
    :cond_10
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_11

    const v5, 0x7f0f0233

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "enabledDesc":Ljava/lang/String;
    :goto_b
    new-array v5, v10, [Ljava/lang/Object;

    .line 142
    aput-object v1, v5, v7

    aput-object v4, v5, v8

    .line 143
    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    aput-object v6, v5, v9

    .line 141
    const v6, 0x7f0f0257

    .line 140
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    .line 144
    new-array v5, v10, [Ljava/lang/Object;

    .line 146
    const v6, 0x7f0f0232

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v4, v5, v8

    .line 147
    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    aput-object v6, v5, v9

    .line 145
    const v6, 0x7f0f0257

    .line 144
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/qs/QSTile$SignalState;->minimalContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 138
    .end local v1    # "enabledDesc":Ljava/lang/String;
    :cond_11
    const v5, 0x7f0f0234

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "enabledDesc":Ljava/lang/String;
    goto :goto_b
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 103
    check-cast p1, Lcom/android/systemui/qs/QSTile$SignalState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/systemui/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->newTileState()Lcom/android/systemui/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 69
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method
