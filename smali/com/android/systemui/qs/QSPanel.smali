.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSTile$Host$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$H;,
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessPaddingTop:I

.field protected final mBrightnessView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field protected mExpanded:Z

.field protected mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field protected mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field protected mListening:Z

.field private mPanelPaddingBottom:I

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimSwitchController:Lcom/android/systemui/settings/SimSwitchController;

.field protected mSimSwitcherView:Landroid/view/View;

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 57
    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mSimSwitcherView:Landroid/view/View;

    .line 58
    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 86
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setOrientation(I)V

    .line 90
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    const v1, 0x7f0400e6

    .line 91
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSimSwitcherView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSimSwitcherView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Lcom/android/systemui/settings/SimSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mSimSwitcherView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/settings/SimSwitchController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSimSwitchController:Lcom/android/systemui/settings/SimSwitchController;

    .line 97
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    const v1, 0x7f0400c4

    .line 97
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->setupTileLayout()V

    .line 103
    new-instance v0, Lcom/android/systemui/qs/QSFooter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 108
    new-instance v2, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 109
    const v0, 0x7f1201f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 110
    const v1, 0x7f1201f1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 108
    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 84
    return-void
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    .line 491
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V

    .line 479
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .locals 2
    .param p1, "subPanel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    return-object v1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v1

    return-object v1
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 451
    if-eqz p2, :cond_1

    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 452
    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    :cond_0
    invoke-direct {p0, v1, p3, p4}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V

    .line 450
    return-void

    :cond_1
    move-object v0, v1

    .line 451
    goto :goto_0
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v2, p1, :cond_1

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 439
    :cond_1
    if-eqz p2, :cond_2

    .line 440
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 441
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-nez v2, :cond_2

    return-void

    .line 443
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2, p2}, Lcom/android/systemui/qs/QSTile;->setDetailListening(Z)V

    .line 444
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileBaseView;->getLeft()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 445
    .local v0, "x":I
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileBaseView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v3, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileBaseView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTop()I

    move-result v3

    .line 445
    add-int v1, v2, v3

    .line 447
    .local v1, "y":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    .line 436
    return-void
.end method

.method private logTiles()V
    .locals 4

    .prologue
    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 475
    .local v1, "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    return-void

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 458
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v0, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 460
    .local v0, "scanState":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    .line 455
    return-void

    .line 458
    .end local v0    # "scanState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addTile(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 5
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 325
    .local v3, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/qs/QSTile;Z)Lcom/android/systemui/qs/QSTileBaseView;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    .line 327
    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 362
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSTile;->addCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 363
    iput-object v0, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/qs/QSTile$Callback;

    .line 364
    new-instance v1, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 370
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 377
    .local v2, "longClick":Landroid/view/View$OnLongClickListener;
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v4, v1, v2}, Lcom/android/systemui/qs/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 378
    iget-object v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 379
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v4, :cond_0

    .line 382
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v4, v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 323
    :cond_0
    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 498
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "spec":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 500
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 501
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 497
    :cond_0
    return-void

    .line 500
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public closeDetail()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(II)V

    .line 413
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 409
    return-void
.end method

.method protected createTileView(Lcom/android/systemui/qs/QSTile;Z)Lcom/android/systemui/qs/QSTileBaseView;
    .locals 3
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;Z)",
            "Lcom/android/systemui/qs/QSTileBaseView;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v0, Lcom/android/systemui/qs/QSTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSIconView;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    return-object v0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 312
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSTileBaseView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 311
    return-void
.end method

.method getBrightnessView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object v0
.end method

.method public getFooter()Lcom/android/systemui/qs/QSFooter;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object v0
.end method

.method getTileView(Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTileBaseView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)",
            "Lcom/android/systemui/qs/QSTileBaseView;"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 514
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    if-ne v2, p1, :cond_0

    .line 515
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    return-object v2

    .line 518
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 423
    instance-of v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v2, :cond_0

    .line 424
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    .line 422
    :goto_0
    return-void

    .line 426
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    const/4 v0, 0x0

    .line 427
    .local v0, "x":I
    const/4 v1, 0x0

    .line 428
    .local v1, "y":I
    if-eqz p1, :cond_1

    .line 429
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 430
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 432
    :cond_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method public isShowingCustomize()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "qs_show_brightness"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->onConfigurationChanged()V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 220
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 137
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 139
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    .line 141
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 135
    return-void
.end method

.method protected onTileClick(Lcom/android/systemui/qs/QSTile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->click()V

    .line 405
    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 145
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 151
    const-string/jumbo v1, "qs_show_brightness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_1
    return-void

    .line 153
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 6
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    .line 159
    .local v0, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v4

    aput v4, v2, v5

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;[I)V

    .line 157
    return-void
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 271
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 273
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSFooter;->refreshState()V

    .line 269
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f1201f1

    .line 172
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    .line 174
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 175
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 171
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 183
    return-void
.end method

.method public setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 238
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    const/16 v2, 0x6f

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 236
    :goto_0
    return-void

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    goto :goto_0
.end method

.method setGridContentVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 464
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 465
    .local v0, "newVis":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 466
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/16 v2, 0x6f

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;II)V

    .line 469
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 463
    return-void

    .line 464
    .end local v0    # "newVis":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "customizer"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 192
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->setBackgroundLooper(Landroid/os/Looper;)V

    .line 187
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 252
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 261
    if-eqz p1, :cond_4

    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 250
    :cond_3
    :goto_0
    return-void

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_0
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    .line 296
    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 6
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 302
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v4, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 303
    iget-object v4, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-object v5, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile;->removeCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    goto :goto_0

    .line 305
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 306
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    .line 307
    .local v2, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;Z)V

    goto :goto_1

    .line 300
    .end local v2    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    return-void
.end method

.method protected setupTileLayout()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 116
    const v1, 0x7f0400be

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return v0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;[I)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p3, "locationInWindow"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 277
    aget v1, p3, v4

    .line 278
    .local v1, "xInWindow":I
    aget v2, p3, v5

    .line 279
    .local v2, "yInWindow":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 281
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 282
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 283
    aget v3, p3, v4

    sub-int v3, v1, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 284
    aget v3, p3, v5

    sub-int v3, v2, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 286
    aput v1, p3, v4

    .line 287
    aput v2, p3, v5

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 276
    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    new-instance v0, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 205
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f100192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 206
    const v3, 0x7f100194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 207
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    invoke-virtual {p0, v5, v3, v5, v4}, Lcom/android/systemui/qs/QSPanel;->setPadding(IIII)V

    .line 208
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 209
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->clearState()V

    goto :goto_0

    .line 211
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    .line 203
    :cond_2
    return-void
.end method
