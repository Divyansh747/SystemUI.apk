.class public Lcom/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private bssid:Ljava/lang/String;

.field private mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRssi:I

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 121
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 163
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 164
    invoke-direct {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->initWithScanResult(Landroid/net/wifi/ScanResult;)V

    .line 162
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 121
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 168
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 167
    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 833
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 834
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 835
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 836
    const/4 v2, 0x3

    return v2

    .line 837
    :cond_0
    if-eqz v1, :cond_1

    .line 838
    const/4 v2, 0x2

    return v2

    .line 839
    :cond_1
    if-eqz v0, :cond_2

    .line 840
    const/4 v2, 0x1

    return v2

    .line 842
    :cond_2
    const-string/jumbo v2, "SettingsLib.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v2, 0x0

    return v2
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 848
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const/4 v0, 0x1

    return v0

    .line 850
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    const/4 v0, 0x2

    return v0

    .line 852
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    const/4 v0, 0x3

    return v0

    .line 855
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 859
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    return v3

    .line 862
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 863
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 862
    if-eqz v2, :cond_2

    .line 864
    :cond_1
    return v4

    .line 866
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 24
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 402
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v18, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 407
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 406
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_0
    :goto_0
    sget v19, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    if-lez v19, :cond_10

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 447
    const-string/jumbo v19, " f="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_1
    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 466
    :cond_2
    :goto_1
    if-eqz p1, :cond_10

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 469
    .local v11, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v7, 0x0

    .line 470
    .local v7, "index":I
    :goto_2
    const/16 v19, 0xa

    .line 469
    move/from16 v0, v19

    if-ge v7, v0, :cond_10

    .line 472
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v19

    if-eqz v19, :cond_3

    .line 473
    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 474
    const-string/jumbo v20, "="

    .line 473
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 475
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v20

    .line 473
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 408
    .end local v7    # "index":I
    .end local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v21

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v19

    .line 410
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 411
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 412
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->available_via_passpoint:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "format":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 415
    .end local v6    # "format":Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 417
    sget v10, Lcom/android/settingslib/R$string;->wifi_no_internet_no_reconnect:I

    .line 419
    .local v10, "messageID":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 418
    .end local v10    # "messageID":I
    :cond_8
    sget v10, Lcom/android/settingslib/R$string;->wifi_no_internet:I

    .restart local v10    # "messageID":I
    goto :goto_4

    .line 420
    .end local v10    # "messageID":I
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 435
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    move/from16 v19, v0

    const v20, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 422
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 423
    .restart local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto/16 :goto_0

    .line 432
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_disabled_generic:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 425
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 429
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 438
    .end local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_c
    if-eqz p1, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 451
    :cond_d
    const-string/jumbo v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_f

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 454
    .local v14, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    sub-long v20, v14, v20

    const-wide/16 v22, 0x3e8

    div-long v4, v20, v22

    .line 455
    .local v4, "diff":J
    const-wide/16 v20, 0x3c

    rem-long v16, v4, v20

    .line 456
    .local v16, "sec":J
    const-wide/16 v20, 0x3c

    div-long v20, v4, v20

    const-wide/16 v22, 0x3c

    rem-long v12, v20, v22

    .line 457
    .local v12, "min":J
    const-wide/16 v20, 0x3c

    div-long v20, v12, v20

    const-wide/16 v22, 0x3c

    rem-long v8, v20, v22

    .line 458
    .local v8, "hour":J
    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-lez v19, :cond_e

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "h "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_e
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "m "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "s "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .end local v4    # "diff":J
    .end local v8    # "hour":J
    .end local v12    # "min":J
    .end local v14    # "now":J
    .end local v16    # "sec":J
    :cond_f
    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 480
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 423
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z

    .prologue
    const/4 v0, 0x0

    .line 820
    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z
    .param p3, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "isEphemeral"    # Z
    .param p4, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 776
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v8, :cond_1

    if-nez p1, :cond_1

    .line 777
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 779
    sget v8, Lcom/android/settingslib/R$string;->connected_via_passpoint:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "format":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p4, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 781
    .end local v2    # "format":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 783
    sget v8, Lcom/android/settingslib/R$string;->connected_via_wfa:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 789
    :cond_1
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 788
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 790
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v8, :cond_2

    .line 792
    const-string/jumbo v8, "wifi"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 791
    invoke-static {v8}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v7

    .line 796
    .local v7, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v7}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 800
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 801
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_2

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 805
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v7    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    if-nez p2, :cond_4

    .line 806
    const-string/jumbo v8, "SettingsLib.AccessPoint"

    const-string/jumbo v9, "state is null, returning empty summary"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string/jumbo v8, ""

    return-object v8

    .line 797
    .restart local v7    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v1

    .line 798
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .local v6, "nw":Landroid/net/Network;
    goto :goto_0

    .line 802
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v6    # "nw":Landroid/net/Network;
    .restart local v5    # "nc":Landroid/net/NetworkCapabilities;
    :cond_3
    sget v8, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 809
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v7    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-nez p1, :cond_6

    .line 810
    sget v8, Lcom/android/settingslib/R$array;->wifi_status:I

    .line 809
    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 811
    .local v3, "formats":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    .line 813
    .local v4, "index":I
    array-length v8, v3

    if-ge v4, v8, :cond_5

    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 814
    :cond_5
    const-string/jumbo v8, ""

    return-object v8

    .line 810
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "index":I
    :cond_6
    sget v8, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    goto :goto_1

    .line 816
    .restart local v3    # "formats":[Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_7
    aget-object v8, v3, v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 22

    .prologue
    .line 492
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 494
    .local v15, "scans24GHz":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 495
    .local v16, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 497
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 499
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 502
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    const-string/jumbo v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string/jumbo v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string/jumbo v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string/jumbo v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string/jumbo v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .end local v2    # "bssid":Ljava/lang/String;
    :cond_1
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 514
    .local v14, "rssi5":I
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 515
    .local v13, "rssi24":I
    const/4 v9, 0x0

    .line 516
    .local v9, "num5":I
    const/4 v8, 0x0

    .line 517
    .local v8, "num24":I
    const/4 v10, 0x0

    .line 518
    .local v10, "numBlackListed":I
    const/4 v4, 0x0

    .line 519
    .local v4, "n24":I
    const/4 v5, 0x0

    .line 520
    .local v5, "n5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    .line 522
    .local v3, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    .end local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    .local v12, "result$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 524
    .local v11, "result":Landroid/net/wifi/ScanResult;
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 525
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    .line 528
    add-int/lit8 v9, v9, 0x1

    .line 537
    :cond_3
    :goto_1
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 538
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    .line 539
    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v14, :cond_4

    .line 540
    iget v14, v11, Landroid/net/wifi/ScanResult;->level:I

    .line 542
    :cond_4
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 543
    if-nez v16, :cond_5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    :cond_5
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    if-eqz v2, :cond_6

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string/jumbo v18, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_6
    const-string/jumbo v18, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    const-string/jumbo v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string/jumbo v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 529
    :cond_7
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 530
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 533
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 551
    :cond_8
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 552
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 553
    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_9

    .line 554
    iget v13, v11, Landroid/net/wifi/ScanResult;->level:I

    .line 556
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_2

    .line 557
    if-nez v15, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    :cond_a
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    if-eqz v2, :cond_b

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string/jumbo v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_b
    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    const-string/jumbo v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 567
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    :cond_c
    const-string/jumbo v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    if-lez v8, :cond_d

    .line 569
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v4, v0, :cond_f

    .line 571
    if-eqz v15, :cond_d

    .line 572
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_d
    :goto_2
    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    if-lez v9, :cond_e

    .line 583
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v5, v0, :cond_10

    .line 585
    if-eqz v16, :cond_e

    .line 586
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_e
    :goto_3
    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 575
    :cond_f
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    if-eqz v15, :cond_d

    .line 577
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 589
    :cond_10
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    if-eqz v16, :cond_e

    .line 591
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private initWithScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 684
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 685
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 686
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 687
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 688
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 689
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 690
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 683
    return-void
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 633
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 634
    :cond_1
    if-eqz p1, :cond_2

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 888
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    const-string/jumbo v1, ""

    return-object v1

    .line 891
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 892
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 893
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 894
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 896
    :cond_1
    return-object p0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "security"    # I
    .param p1, "pskType"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 870
    if-ne p0, v0, :cond_0

    .line 871
    const-string/jumbo v0, "WEP"

    return-object v0

    .line 872
    :cond_0
    if-ne p0, v1, :cond_4

    .line 873
    if-ne p1, v0, :cond_1

    .line 874
    const-string/jumbo v0, "WPA"

    return-object v0

    .line 875
    :cond_1
    if-ne p1, v1, :cond_2

    .line 876
    const-string/jumbo v0, "WPA2"

    return-object v0

    .line 877
    :cond_2
    if-ne p1, v2, :cond_3

    .line 878
    const-string/jumbo v0, "WPA_WPA2"

    return-object v0

    .line 880
    :cond_3
    const-string/jumbo v0, "PSK"

    return-object v0

    .line 881
    :cond_4
    if-ne p0, v2, :cond_5

    .line 882
    const-string/jumbo v0, "EAP"

    return-object v0

    .line 884
    :cond_5
    const-string/jumbo v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 254
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 6
    .param p1, "other"    # Lcom/android/settingslib/wifi/AccessPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const v3, 0x7fffffff

    const/4 v2, -0x1

    .line 175
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    .line 175
    :cond_1
    return v2

    .line 179
    :cond_2
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v1, v3, :cond_3

    iget v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-ne v1, v3, :cond_3

    return v2

    .line 180
    :cond_3
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-ne v1, v3, :cond_4

    iget v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v1, v3, :cond_4

    return v4

    .line 183
    :cond_4
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_5

    .line 184
    iget v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_5

    return v2

    .line 185
    :cond_5
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_6

    .line 186
    iget v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_6

    return v4

    .line 189
    :cond_6
    iget v1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    .line 190
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 189
    sub-int v0, v1, v2

    .line 191
    .local v0, "difference":I
    if-eqz v0, :cond_7

    .line 192
    return v0

    .line 195
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 173
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 200
    instance-of v1, p1, Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    return v0

    .line 201
    :cond_0
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public generateOpenNetworkConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 665
    return-void

    .line 666
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 667
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 661
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    const-string/jumbo v1, "NetworkInfo is null, cannot return detailed state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-object v2
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 265
    const/4 v0, -0x1

    return v0

    .line 267
    :cond_0
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public getRssi()I
    .locals 4

    .prologue
    .line 271
    const/high16 v2, -0x80000000

    .line 272
    .local v2, "rssi":I
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 273
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v2, :cond_0

    .line 274
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 278
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return v2
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSeen()J
    .locals 6

    .prologue
    .line 282
    const-wide/16 v2, 0x0

    .line 283
    .local v2, "seen":J
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 284
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 285
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    goto :goto_0

    .line 289
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-wide v2
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 344
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 345
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 346
    const/16 v4, 0x12

    .line 345
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 347
    return-object v0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/lit8 v0, v1, 0x0

    .line 208
    :cond_0
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 209
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 210
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 211
    return v0
.end method

.method public isActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 608
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_2

    .line 609
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    .line 608
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 610
    goto :goto_0

    :cond_2
    move v0, v1

    .line 608
    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 618
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 618
    :cond_0
    return v0
.end method

.method public isPasspoint()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 646
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 677
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 678
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 679
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 680
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 671
    return-void

    .line 675
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 246
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-ne v2, v3, :cond_2

    .line 244
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 246
    goto :goto_0

    :cond_3
    move v0, v1

    .line 244
    goto :goto_0
.end method

.method setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 771
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 770
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccessPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "connectable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_3
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 231
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-static {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 764
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 765
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 762
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v4, 0x0

    .line 711
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 713
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 719
    .local v1, "oldLevel":I
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v2

    .line 720
    .local v2, "oldRssi":I
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSeen()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSeen:J

    .line 721
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 722
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 724
    .local v0, "newLevel":I
    if-lez v0, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v3, :cond_0

    .line 725
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v3, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 728
    :cond_0
    iget v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 729
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 732
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v3, :cond_2

    .line 733
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v3, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 736
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 738
    .end local v0    # "newLevel":I
    .end local v1    # "oldLevel":I
    .end local v2    # "oldRssi":I
    :cond_3
    return v4
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 742
    const/4 v0, 0x0

    .line 743
    .local v0, "reorder":Z
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 745
    :goto_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 746
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 747
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 748
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 759
    :cond_0
    :goto_1
    return v0

    .line 744
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 751
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 752
    const/4 v0, 0x1

    .line 753
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 754
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 755
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    goto :goto_1
.end method
