.class public abstract Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;
.super Landroid/os/Binder;
.source "IMtkTelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortFemtoCellList:I = 0x33

.field static final blacklist TRANSACTION_cancelAvailableNetworks:I = 0x37

.field static final blacklist TRANSACTION_exitEmergencyCallbackMode:I = 0x24

.field static final blacklist TRANSACTION_getAdnStorageInfo:I = 0x1f

.field static final blacklist TRANSACTION_getApcInfoUsingSlotId:I = 0x26

.field static final blacklist TRANSACTION_getCallSubAddressEnabled:I = 0x44

.field static final blacklist TRANSACTION_getCdmaSubscriptionActStatus:I = 0x27

.field static final blacklist TRANSACTION_getDebuggingDsdaStatus:I = 0x3f

.field static final blacklist TRANSACTION_getDisable2G:I = 0x31

.field static final blacklist TRANSACTION_getFemtoCellList:I = 0x32

.field static final blacklist TRANSACTION_getIccAppFamily:I = 0x2

.field static final blacklist TRANSACTION_getIccAtr:I = 0x6

.field static final blacklist TRANSACTION_getIccCardType:I = 0x3

.field static final blacklist TRANSACTION_getIsLastEccIms:I = 0x29

.field static final blacklist TRANSACTION_getLocatedPlmn:I = 0x2f

.field static final blacklist TRANSACTION_getMainCapabilityPhoneId:I = 0x1b

.field static final blacklist TRANSACTION_getMvnoMatchType:I = 0x10

.field static final blacklist TRANSACTION_getMvnoPattern:I = 0x11

.field static final blacklist TRANSACTION_getNrMapStatus:I = 0x43

.field static final blacklist TRANSACTION_getPCO520State:I = 0x23

.field static final blacklist TRANSACTION_getRoamingEnable:I = 0x3c

.field static final blacklist TRANSACTION_getSelfActivateState:I = 0x22

.field static final blacklist TRANSACTION_getServiceStateByPhoneId:I = 0x3a

.field static final blacklist TRANSACTION_getSimLockStateForRSU:I = 0x39

.field static final blacklist TRANSACTION_getSimOnOffExecutingState:I = 0xc

.field static final blacklist TRANSACTION_getSimOnOffState:I = 0xb

.field static final blacklist TRANSACTION_getSimOperatorNumericForPhoneEx:I = 0x18

.field static final blacklist TRANSACTION_getSuggestedPlmnList:I = 0x3d

.field static final blacklist TRANSACTION_getUimSubscriberId:I = 0x17

.field static final blacklist TRANSACTION_iccExchangeSimIOEx:I = 0x7

.field static final blacklist TRANSACTION_invokeOemRilRequestRaw:I = 0x2c

.field static final blacklist TRANSACTION_invokeOemRilRequestRawBySlot:I = 0x2d

.field static final blacklist TRANSACTION_isAppTypeSupported:I = 0x4

.field static final blacklist TRANSACTION_isCapabilitySwitching:I = 0x1a

.field static final blacklist TRANSACTION_isEmergencyNumber:I = 0x3e

.field static final blacklist TRANSACTION_isFdnEnabled:I = 0x16

.field static final blacklist TRANSACTION_isImsRegistered:I = 0x1c

.field static final blacklist TRANSACTION_isInCsCall:I = 0x2e

.field static final blacklist TRANSACTION_isInEmergencyCall:I = 0x46

.field static final blacklist TRANSACTION_isInHomeNetwork:I = 0x1

.field static final blacklist TRANSACTION_isNrMapEnabled:I = 0x42

.field static final blacklist TRANSACTION_isPhbReady:I = 0x20

.field static final blacklist TRANSACTION_isRadioOffBySimManagement:I = 0x15

.field static final blacklist TRANSACTION_isTestIccCard:I = 0x5

.field static final blacklist TRANSACTION_isVolteEnabled:I = 0x1d

.field static final blacklist TRANSACTION_isWifiCallingEnabled:I = 0x1e

.field static final blacklist TRANSACTION_loadEFLinearFixedAll:I = 0x9

.field static final blacklist TRANSACTION_loadEFTransparent:I = 0x8

.field static final blacklist TRANSACTION_manuallySetNrMap:I = 0x41

.field static final blacklist TRANSACTION_queryFemtoCellSystemSelectionMode:I = 0x35

.field static final blacklist TRANSACTION_queryNetworkLock:I = 0xd

.field static final blacklist TRANSACTION_registerAtUrcInd:I = 0x2a

.field static final blacklist TRANSACTION_repollIccStateForNetworkLock:I = 0xf

.field static final blacklist TRANSACTION_selectFemtoCell:I = 0x34

.field static final blacklist TRANSACTION_selfActivationAction:I = 0x21

.field static final blacklist TRANSACTION_sendAtCmd:I = 0x2b

.field static final blacklist TRANSACTION_setApcModeUsingSlotId:I = 0x25

.field static final blacklist TRANSACTION_setCallSubAddressEnabled:I = 0x45

.field static final blacklist TRANSACTION_setDisable2G:I = 0x30

.field static final blacklist TRANSACTION_setFemtoCellSystemSelectionMode:I = 0x36

.field static final blacklist TRANSACTION_setIsLastEccIms:I = 0x28

.field static final blacklist TRANSACTION_setRadioCapability:I = 0x19

.field static final blacklist TRANSACTION_setRoamingEnable:I = 0x3b

.field static final blacklist TRANSACTION_setSimPower:I = 0xa

.field static final blacklist TRANSACTION_simAkaAuthentication:I = 0x12

.field static final blacklist TRANSACTION_simGbaAuthBootStrapMode:I = 0x13

.field static final blacklist TRANSACTION_simGbaAuthNafMode:I = 0x14

.field static final blacklist TRANSACTION_supplyDeviceNetworkDepersonalization:I = 0x38

.field static final blacklist TRANSACTION_supplyNetworkDepersonalization:I = 0xe

.field static final blacklist TRANSACTION_switchNrMap:I = 0x40


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 771
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 772
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 780
    if-nez p0, :cond_0

    .line 781
    const/4 v0, 0x0

    return-object v0

    .line 783
    :cond_0
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 784
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    if-eqz v1, :cond_1

    .line 785
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    return-object v1

    .line 787
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 791
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.mediatek.internal.telephony.IMtkTelephonyEx"

    .line 796
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 797
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 807
    packed-switch v11, :pswitch_data_1

    .line 1612
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 803
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 804
    return v15

    .line 1605
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isInEmergencyCall()Z

    move-result v0

    .line 1606
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1608
    goto/16 :goto_2

    .line 1595
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1597
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1598
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1599
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setCallSubAddressEnabled(IZ)V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    goto/16 :goto_2

    .line 1585
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCallSubAddressEnabled(I)Z

    move-result v1

    .line 1588
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1590
    goto/16 :goto_2

    .line 1575
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1576
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getNrMapStatus(I)Ljava/lang/String;

    move-result-object v1

    .line 1578
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1580
    goto/16 :goto_2

    .line 1565
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1566
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isNrMapEnabled(I)Z

    move-result v1

    .line 1568
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1570
    goto/16 :goto_2

    .line 1554
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1556
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1557
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1558
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->manuallySetNrMap(II)V

    .line 1559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1560
    goto/16 :goto_2

    .line 1543
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1545
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1546
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->switchNrMap(IZ)V

    .line 1548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    goto/16 :goto_2

    .line 1535
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDebuggingDsdaStatus()I

    move-result v0

    .line 1536
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    goto/16 :goto_2

    .line 1524
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1526
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v2

    .line 1529
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1531
    goto/16 :goto_2

    .line 1506
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1508
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1510
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1512
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1514
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1515
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSuggestedPlmnList(IIIILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1517
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1519
    goto/16 :goto_2

    .line 1496
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1497
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getRoamingEnable(I)[I

    move-result-object v1

    .line 1499
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1501
    goto/16 :goto_2

    .line 1484
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1486
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1487
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1488
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRoamingEnable(I[I)Z

    move-result v2

    .line 1489
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1491
    goto/16 :goto_2

    .line 1470
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1472
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1474
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1475
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1476
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getServiceStateByPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 1477
    .local v3, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    invoke-virtual {v13, v3, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1479
    goto/16 :goto_2

    .line 1460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/ServiceState;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1461
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1462
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimLockStateForRSU(I)I

    move-result v1

    .line 1463
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    goto/16 :goto_2

    .line 1450
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->supplyDeviceNetworkDepersonalization(Ljava/lang/String;)[I

    move-result-object v1

    .line 1453
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1455
    goto/16 :goto_2

    .line 1440
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->cancelAvailableNetworks(I)Z

    move-result v1

    .line 1443
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1445
    goto/16 :goto_2

    .line 1428
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1430
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1431
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setFemtoCellSystemSelectionMode(II)Z

    move-result v2

    .line 1433
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1435
    goto/16 :goto_2

    .line 1418
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1419
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1420
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->queryFemtoCellSystemSelectionMode(I)I

    move-result v1

    .line 1421
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    goto/16 :goto_2

    .line 1406
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1408
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/mediatek/internal/telephony/FemtoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    .line 1409
    .local v1, "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->selectFemtoCell(ILcom/mediatek/internal/telephony/FemtoCellInfo;)Z

    move-result v2

    .line 1411
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1413
    goto/16 :goto_2

    .line 1396
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1397
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->abortFemtoCellList(I)Z

    move-result v1

    .line 1399
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1401
    goto/16 :goto_2

    .line 1386
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1387
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getFemtoCellList(I)Ljava/util/List;

    move-result-object v1

    .line 1389
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1391
    goto/16 :goto_2

    .line 1376
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1377
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getDisable2G(I)I

    move-result v1

    .line 1379
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    goto/16 :goto_2

    .line 1364
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1366
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1367
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setDisable2G(IZ)Z

    move-result v2

    .line 1369
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1371
    goto/16 :goto_2

    .line 1354
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1355
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v1

    .line 1357
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1359
    goto/16 :goto_2

    .line 1344
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1345
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isInCsCall(I)Z

    move-result v1

    .line 1347
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1349
    goto/16 :goto_2

    .line 1324
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1326
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1328
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1329
    .local v2, "_arg2_length":I
    if-gez v2, :cond_1

    .line 1330
    const/4 v3, 0x0

    .local v3, "_arg2":[B
    goto :goto_0

    .line 1332
    .end local v3    # "_arg2":[B
    :cond_1
    new-array v3, v2, [B

    .line 1334
    .restart local v3    # "_arg2":[B
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1335
    invoke-virtual {v10, v0, v1, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->invokeOemRilRequestRawBySlot(I[B[B)I

    move-result v4

    .line 1336
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1339
    goto/16 :goto_2

    .line 1306
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1308
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1309
    .local v1, "_arg1_length":I
    if-gez v1, :cond_2

    .line 1310
    const/4 v2, 0x0

    .local v2, "_arg1":[B
    goto :goto_1

    .line 1312
    .end local v2    # "_arg1":[B
    :cond_2
    new-array v2, v1, [B

    .line 1314
    .restart local v2    # "_arg1":[B
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1315
    invoke-virtual {v10, v0, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v3

    .line 1316
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1319
    goto/16 :goto_2

    .line 1291
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1293
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1295
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1297
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v16

    .line 1298
    .local v16, "_arg3":Lcom/mediatek/telephony/IOemHookCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1299
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->sendAtCmd(IJLjava/lang/String;Lcom/mediatek/telephony/IOemHookCallback;)V

    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    goto/16 :goto_2

    .line 1280
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Lcom/mediatek/telephony/IOemHookCallback;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1282
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/telephony/IOemHookCallback;

    move-result-object v1

    .line 1283
    .local v1, "_arg1":Lcom/mediatek/telephony/IOemHookCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1284
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->registerAtUrcInd(ILcom/mediatek/telephony/IOemHookCallback;)V

    .line 1285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    goto/16 :goto_2

    .line 1272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/telephony/IOemHookCallback;
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIsLastEccIms()Z

    move-result v0

    .line 1273
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1275
    goto/16 :goto_2

    .line 1264
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1265
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setIsLastEccIms(Z)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    goto/16 :goto_2

    .line 1254
    .end local v0    # "_arg0":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1255
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getCdmaSubscriptionActStatus(I)I

    move-result v1

    .line 1257
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    goto/16 :goto_2

    .line 1244
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1245
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getApcInfoUsingSlotId(I)Lcom/mediatek/internal/telephony/PseudoCellInfo;

    move-result-object v1

    .line 1247
    .local v1, "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1249
    goto/16 :goto_2

    .line 1229
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1231
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1233
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1235
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1236
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setApcModeUsingSlotId(IIZI)V

    .line 1238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    goto/16 :goto_2

    .line 1219
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1220
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->exitEmergencyCallbackMode(I)Z

    move-result v1

    .line 1222
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1224
    goto/16 :goto_2

    .line 1209
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1210
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getPCO520State(I)I

    move-result v1

    .line 1212
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    goto/16 :goto_2

    .line 1199
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1200
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSelfActivateState(I)I

    move-result v1

    .line 1202
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    goto/16 :goto_2

    .line 1185
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1187
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1189
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1190
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->selfActivationAction(ILandroid/os/Bundle;I)I

    move-result v3

    .line 1192
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    goto/16 :goto_2

    .line 1175
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1176
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isPhbReady(I)Z

    move-result v1

    .line 1178
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1180
    goto/16 :goto_2

    .line 1165
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1166
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v1

    .line 1168
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1170
    goto/16 :goto_2

    .line 1155
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1156
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1157
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isWifiCallingEnabled(I)Z

    move-result v1

    .line 1158
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1160
    goto/16 :goto_2

    .line 1145
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1146
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isVolteEnabled(I)Z

    move-result v1

    .line 1148
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1150
    goto/16 :goto_2

    .line 1135
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1136
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isImsRegistered(I)Z

    move-result v1

    .line 1138
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1140
    goto/16 :goto_2

    .line 1127
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1128
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    goto/16 :goto_2

    .line 1120
    .end local v0    # "_result":I
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isCapabilitySwitching()Z

    move-result v0

    .line 1121
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1123
    goto/16 :goto_2

    .line 1111
    .end local v0    # "_result":Z
    :pswitch_2e
    sget-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/RadioAccessFamily;

    .line 1112
    .local v0, "_arg0":[Landroid/telephony/RadioAccessFamily;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v1

    .line 1114
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1116
    goto/16 :goto_2

    .line 1101
    .end local v0    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1102
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOperatorNumericForPhoneEx(I)[Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1106
    goto/16 :goto_2

    .line 1089
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1092
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getUimSubscriberId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1096
    goto/16 :goto_2

    .line 1079
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isFdnEnabled(I)Z

    move-result v1

    .line 1082
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1084
    goto/16 :goto_2

    .line 1069
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1070
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isRadioOffBySimManagement(I)Z

    move-result v1

    .line 1072
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1074
    goto/16 :goto_2

    .line 1053
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1055
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1057
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1059
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1060
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v4

    .line 1062
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1064
    goto/16 :goto_2

    .line 1037
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1039
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1041
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1043
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1044
    .restart local v3    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v4

    .line 1046
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1048
    goto/16 :goto_2

    .line 1021
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1023
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1025
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1027
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1028
    .restart local v3    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v4

    .line 1030
    .restart local v4    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1032
    goto/16 :goto_2

    .line 1009
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":[B
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1011
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1016
    goto/16 :goto_2

    .line 999
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1000
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1004
    goto/16 :goto_2

    .line 988
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 990
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 991
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    goto/16 :goto_2

    .line 976
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 978
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v2

    .line 981
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    goto/16 :goto_2

    .line 964
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 966
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 967
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v2

    .line 969
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 971
    goto/16 :goto_2

    .line 954
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 955
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOnOffExecutingState(I)I

    move-result v1

    .line 957
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    goto/16 :goto_2

    .line 944
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 945
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getSimOnOffState(I)I

    move-result v1

    .line 947
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    goto/16 :goto_2

    .line 932
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 934
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 935
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->setSimPower(II)I

    move-result v2

    .line 937
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    goto/16 :goto_2

    .line 916
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 918
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 920
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 922
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->loadEFLinearFixedAll(IIILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 925
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 927
    goto/16 :goto_2

    .line 900
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 904
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 906
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 907
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->loadEFTransparent(IIILjava/lang/String;)[B

    move-result-object v4

    .line 909
    .local v4, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 911
    goto/16 :goto_2

    .line 874
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":[B
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 876
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 878
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 880
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 882
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 884
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 886
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 888
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 890
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 891
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->iccExchangeSimIOEx(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 893
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 895
    goto :goto_2

    .line 864
    .end local v0    # "_result":[B
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 865
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccAtr(I)Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    goto :goto_2

    .line 854
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v1

    .line 857
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 859
    goto :goto_2

    .line 842
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 844
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isAppTypeSupported(II)Z

    move-result v2

    .line 847
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 849
    goto :goto_2

    .line 832
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    goto :goto_2

    .line 822
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 823
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->getIccAppFamily(I)I

    move-result v1

    .line 825
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    goto :goto_2

    .line 812
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 813
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->isInHomeNetwork(I)Z

    move-result v1

    .line 815
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 817
    nop

    .line 1615
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :goto_2
    return v15

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
