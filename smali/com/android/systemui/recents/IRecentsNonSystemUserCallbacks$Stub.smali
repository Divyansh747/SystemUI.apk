.class public abstract Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;
.super Landroid/os/Binder;
.source "IRecentsNonSystemUserCallbacks.java"

# interfaces
.implements Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 150
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_0
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    return v0

    .line 52
    :sswitch_1
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->preloadRecents()V

    .line 54
    const/4 v0, 0x1

    return v0

    .line 58
    :sswitch_2
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->cancelPreloadingRecents()V

    .line 60
    const/4 v0, 0x1

    return v0

    .line 64
    :sswitch_3
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 68
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 70
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 72
    .local v3, "_arg2":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 74
    .local v4, "_arg3":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 76
    .local v5, "_arg4":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->showRecents(ZZZZZI)V

    .line 78
    const/4 v0, 0x1

    return v0

    .line 66
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_1

    .line 70
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Z
    goto :goto_2

    .line 72
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Z
    goto :goto_3

    .line 74
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Z
    goto :goto_4

    .line 82
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    :sswitch_4
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 86
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    .line 87
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->hideRecents(ZZ)V

    .line 88
    const/4 v0, 0x1

    return v0

    .line 84
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_5

    .line 86
    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    .line 92
    .end local v1    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 95
    .local v8, "_arg0":I
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->toggleRecents(I)V

    .line 96
    const/4 v0, 0x1

    return v0

    .line 100
    .end local v8    # "_arg0":I
    :sswitch_6
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onConfigurationChanged()V

    .line 102
    const/4 v0, 0x1

    return v0

    .line 106
    :sswitch_7
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 110
    .restart local v8    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 112
    .local v9, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 114
    .local v10, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 120
    :goto_7
    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->dockTopTask(IIILandroid/graphics/Rect;)V

    .line 121
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_7
    const/4 v11, 0x0

    .local v11, "_arg3":Landroid/graphics/Rect;
    goto :goto_7

    .line 125
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v11    # "_arg3":Landroid/graphics/Rect;
    :sswitch_8
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 128
    .local v7, "_arg0":F
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onDraggingInRecents(F)V

    .line 129
    const/4 v0, 0x1

    return v0

    .line 133
    .end local v7    # "_arg0":F
    :sswitch_9
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 136
    .restart local v7    # "_arg0":F
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onDraggingInRecentsEnded(F)V

    .line 137
    const/4 v0, 0x1

    return v0

    .line 141
    .end local v7    # "_arg0":F
    :sswitch_a
    const-string/jumbo v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 145
    .restart local v8    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 146
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->showCurrentUserToast(II)V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
