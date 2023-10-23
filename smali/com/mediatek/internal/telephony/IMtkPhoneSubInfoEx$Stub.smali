.class public abstract Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;
.super Landroid/os/Binder;
.source "IMtkPhoneSubInfoEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getIsimDomainForSubscriber:I = 0x12

.field static final blacklist TRANSACTION_getIsimGbabp:I = 0x6

.field static final blacklist TRANSACTION_getIsimGbabpForSubscriber:I = 0x7

.field static final blacklist TRANSACTION_getIsimImpiForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_getIsimImpuForSubscriber:I = 0x13

.field static final blacklist TRANSACTION_getIsimIstForSubscriber:I = 0x14

.field static final blacklist TRANSACTION_getIsimPcscfForSubscriber:I = 0x15

.field static final blacklist TRANSACTION_getIsimPsismsc:I = 0x16

.field static final blacklist TRANSACTION_getIsimPsismscForSubscriber:I = 0x17

.field static final blacklist TRANSACTION_getLine1PhoneNumberForSubscriber:I = 0x18

.field static final blacklist TRANSACTION_getMncLength:I = 0xf

.field static final blacklist TRANSACTION_getMncLengthForSubscriber:I = 0x10

.field static final blacklist TRANSACTION_getUsimGbabp:I = 0x2

.field static final blacklist TRANSACTION_getUsimGbabpForSubscriber:I = 0x3

.field static final blacklist TRANSACTION_getUsimPsismsc:I = 0xb

.field static final blacklist TRANSACTION_getUsimPsismscForSubscriber:I = 0xc

.field static final blacklist TRANSACTION_getUsimService:I = 0x1

.field static final blacklist TRANSACTION_getUsimServiceForSubscriber:I = 0xa

.field static final blacklist TRANSACTION_getUsimSmsp:I = 0xd

.field static final blacklist TRANSACTION_getUsimSmspForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_setIsimGbabp:I = 0x8

.field static final blacklist TRANSACTION_setIsimGbabpForSubscriber:I = 0x9

.field static final blacklist TRANSACTION_setUsimGbabp:I = 0x4

.field static final blacklist TRANSACTION_setUsimGbabpForSubscriber:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 250
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 258
    if-nez p0, :cond_0

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 262
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    if-eqz v1, :cond_1

    .line 263
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    return-object v1

    .line 265
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 269
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    .line 274
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 275
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 285
    packed-switch p1, :pswitch_data_1

    .line 529
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 281
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    return v1

    .line 516
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getLine1PhoneNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    goto/16 :goto_0

    .line 506
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 507
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPsismscForSubscriber(I)[B

    move-result-object v3

    .line 509
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 511
    goto/16 :goto_0

    .line 498
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPsismsc()[B

    move-result-object v2

    .line 499
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 501
    goto/16 :goto_0

    .line 489
    .end local v2    # "_result":[B
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 494
    goto/16 :goto_0

    .line 479
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    goto/16 :goto_0

    .line 469
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 474
    goto/16 :goto_0

    .line 459
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    goto/16 :goto_0

    .line 449
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 452
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    goto/16 :goto_0

    .line 439
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getMncLengthForSubscriber(I)I

    move-result v3

    .line 442
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    goto/16 :goto_0

    .line 431
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getMncLength()I

    move-result v2

    .line 432
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    goto/16 :goto_0

    .line 422
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimSmspForSubscriber(I)[B

    move-result-object v3

    .line 425
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 427
    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimSmsp()[B

    move-result-object v2

    .line 415
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 417
    goto/16 :goto_0

    .line 405
    .end local v2    # "_result":[B
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 406
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimPsismscForSubscriber(I)[B

    move-result-object v3

    .line 408
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 410
    goto/16 :goto_0

    .line 397
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimPsismsc()[B

    move-result-object v2

    .line 398
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 400
    goto/16 :goto_0

    .line 384
    .end local v2    # "_result":[B
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 389
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimServiceForSubscriber(IILjava/lang/String;)Z

    move-result v5

    .line 391
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    goto/16 :goto_0

    .line 371
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 376
    .local v4, "_arg2":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_0

    .line 360
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 363
    .local v3, "_arg1":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_0

    .line 350
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 351
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    goto :goto_0

    .line 342
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimGbabp()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    goto :goto_0

    .line 330
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 335
    .restart local v4    # "_arg2":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto :goto_0

    .line 319
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 322
    .local v3, "_arg1":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto :goto_0

    .line 309
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    goto :goto_0

    .line 301
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimGbabp()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    goto :goto_0

    .line 290
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimService(ILjava/lang/String;)Z

    move-result v4

    .line 295
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 297
    nop

    .line 532
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
