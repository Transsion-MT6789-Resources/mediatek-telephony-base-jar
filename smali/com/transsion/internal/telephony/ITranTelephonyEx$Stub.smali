.class public abstract Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITranTelephonyEx.java"

# interfaces
.implements Lcom/transsion/internal/telephony/ITranTelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/internal/telephony/ITranTelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enterDeviceLock:I = 0x14

.field static final blacklist TRANSACTION_exitDeviceLock:I = 0x15

.field static final blacklist TRANSACTION_getPTWhiteList:I = 0x12

.field static final blacklist TRANSACTION_getPtPolicyforSlotIndex:I = 0x11

.field static final blacklist TRANSACTION_getSimMccMnc:I = 0x16

.field static final blacklist TRANSACTION_isDemoPhone:I = 0x2

.field static final blacklist TRANSACTION_isRadioSwitching:I = 0x8

.field static final blacklist TRANSACTION_isTtyModeSupported:I = 0x1

.field static final blacklist TRANSACTION_notifyBinderMultiLinkNwType:I = 0xe

.field static final blacklist TRANSACTION_notifyBinderNetWorkType:I = 0x9

.field static final blacklist TRANSACTION_notifyCameraEvent:I = 0x7

.field static final blacklist TRANSACTION_queryDeviceLockedStatus:I = 0x13

.field static final blacklist TRANSACTION_registerImsCallback:I = 0x19

.field static final blacklist TRANSACTION_registerLinkTurboCallback:I = 0xa

.field static final blacklist TRANSACTION_registerMultiLinkCallback:I = 0xc

.field static final blacklist TRANSACTION_registerNwCallback:I = 0x5

.field static final blacklist TRANSACTION_sendImsCommandToTele:I = 0x18

.field static final blacklist TRANSACTION_sendModemEeRelatedInfoCmd:I = 0x17

.field static final blacklist TRANSACTION_sendNwAtCmd:I = 0x4

.field static final blacklist TRANSACTION_setPTRestrictionforSlotIndex:I = 0xf

.field static final blacklist TRANSACTION_setPTWhiteList:I = 0x10

.field static final blacklist TRANSACTION_unregisterLinkTurboCallback:I = 0xb

.field static final blacklist TRANSACTION_unregisterMultiLinkCallback:I = 0xd

.field static final blacklist TRANSACTION_unregisterNwCallback:I = 0x6

.field static final blacklist TRANSACTION_updateCauseInfo:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 157
    const-string v0, "com.transsion.internal.telephony.ITranTelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/transsion/internal/telephony/ITranTelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 165
    if-nez p0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    const-string v0, "com.transsion.internal.telephony.ITranTelephonyEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 169
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/internal/telephony/ITranTelephonyEx;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, v0

    check-cast v1, Lcom/transsion/internal/telephony/ITranTelephonyEx;

    return-object v1

    .line 172
    :cond_1
    new-instance v1, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 176
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    const-string v0, "com.transsion.internal.telephony.ITranTelephonyEx"

    .line 181
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 182
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 192
    packed-switch p1, :pswitch_data_1

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 188
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v1

    .line 407
    :pswitch_1
    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 408
    .local v2, "_arg0":Landroid/os/Messenger;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->registerImsCallback(Landroid/os/Messenger;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_0

    .line 398
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 399
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->sendImsCommandToTele(Ljava/util/List;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto/16 :goto_0

    .line 391
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->sendModemEeRelatedInfoCmd()V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    goto/16 :goto_0

    .line 382
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->getSimMccMnc(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    goto/16 :goto_0

    .line 373
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->exitDeviceLock(I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_0

    .line 366
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->enterDeviceLock()V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_0

    .line 359
    :pswitch_7
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->queryDeviceLockedStatus()I

    move-result v2

    .line 360
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    goto/16 :goto_0

    .line 352
    .end local v2    # "_result":I
    :pswitch_8
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->getPTWhiteList()Ljava/util/List;

    move-result-object v2

    .line 353
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 355
    goto/16 :goto_0

    .line 343
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->getPtPolicyforSlotIndex(I)J

    move-result-wide v3

    .line 346
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    goto/16 :goto_0

    .line 334
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 335
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->setPTWhiteList(Ljava/util/List;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_0

    .line 323
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 326
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v2, v3, v4}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->setPTRestrictionforSlotIndex(IJ)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->notifyBinderMultiLinkNwType(I)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    goto/16 :goto_0

    .line 307
    .end local v2    # "_arg0":I
    :pswitch_d
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->unregisterMultiLinkCallback()V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto/16 :goto_0

    .line 295
    :pswitch_e
    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 297
    .local v2, "_arg0":Landroid/os/Messenger;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 299
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 300
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2, v3, v4}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->registerMultiLinkCallback(Landroid/os/Messenger;II)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":Landroid/os/Messenger;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_f
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->unregisterLinkTurboCallback()V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_0

    .line 276
    :pswitch_10
    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 278
    .restart local v2    # "_arg0":Landroid/os/Messenger;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2, v3, v4}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->registerLinkTurboCallback(Landroid/os/Messenger;II)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto/16 :goto_0

    .line 267
    .end local v2    # "_arg0":Landroid/os/Messenger;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->notifyBinderNetWorkType(I)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 257
    .end local v2    # "_arg0":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->isRadioSwitching(I)Z

    move-result v3

    .line 260
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    goto :goto_0

    .line 248
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->notifyCameraEvent(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_0

    .line 241
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->unregisterNwCallback()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto :goto_0

    .line 233
    :pswitch_15
    sget-object v2, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 234
    .local v2, "_arg0":Landroid/os/Messenger;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->registerNwCallback(Landroid/os/Messenger;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_0

    .line 224
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->sendNwAtCmd(I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 216
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3, v4}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->updateCauseInfo(IIZ)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_18
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->isDemoPhone()I

    move-result v2

    .line 204
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    goto :goto_0

    .line 196
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual {p0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->isTtyModeSupported()Z

    move-result v2

    .line 197
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 199
    nop

    .line 418
    .end local v2    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
