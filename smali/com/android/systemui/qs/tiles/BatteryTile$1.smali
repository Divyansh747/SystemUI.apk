.class Lcom/android/systemui/qs/tiles/BatteryTile$1;
.super Lcom/android/systemui/qs/QSTile$Icon;
.source "BatteryTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BatteryTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BatteryTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BatteryTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BatteryTile;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$Icon;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    new-instance v0, Lcom/android/systemui/BatteryMeterDrawable;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    const v2, 0x7f0c0074

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 120
    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/BatteryMeterDrawable;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 122
    .local v0, "drawable":Lcom/android/systemui/BatteryMeterDrawable;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get5(Lcom/android/systemui/qs/tiles/BatteryTile;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get6(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get1(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/BatteryMeterDrawable;->onBatteryLevelChanged(IZZ)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get7(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->onPowerSaveChanged(Z)V

    .line 124
    return-object v0
.end method

.method public getPadding()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$1;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get4(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    const v1, 0x7f10019d

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
