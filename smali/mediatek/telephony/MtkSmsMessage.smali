.class public Lmediatek/telephony/MtkSmsMessage;
.super Landroid/telephony/SmsMessage;
.source "MtkSmsMessage.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MtkSmsMessage"

.field public static final blacklist MWI_EMAIL:I = 0x2

.field public static final blacklist MWI_FAX:I = 0x1

.field public static final blacklist MWI_OTHER:I = 0x3

.field public static final blacklist MWI_VIDEO:I = 0x7

.field public static final blacklist MWI_VOICEMAIL:I


# instance fields
.field private blacklist mFormat:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 460
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 461
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "3gpp2"

    iput-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    goto :goto_0

    .line 464
    :cond_0
    const-string v0, "3gpp"

    iput-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 466
    :goto_0
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 108
    invoke-direct {p0, p1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 109
    return-void
.end method

.method public static blacklist calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 241
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    nop

    .line 245
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 246
    .local v2, "ret":[I
    const/4 v3, 0x0

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v4, v2, v3

    .line 247
    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v2, v1

    .line 248
    const/4 v1, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v2, v1

    .line 249
    const/4 v1, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v2, v1

    .line 250
    return-object v2
.end method

.method public static blacklist calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 607
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    nop

    .line 612
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 613
    .local v1, "ret":[I
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v1, v2

    .line 614
    const/4 v2, 0x1

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v1, v2

    .line 615
    const/4 v2, 0x2

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v2

    .line 616
    const/4 v2, 0x3

    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v1, v2

    .line 617
    return-object v1
.end method

.method public static blacklist calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .line 364
    invoke-static {p0, p1}, Lmediatek/telephony/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createFromEfRecord(I[B)Lmediatek/telephony/MtkSmsMessage;
    .locals 3
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 200
    :goto_0
    if-eqz v0, :cond_2

    .line 201
    new-instance v1, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v1, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 202
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const-string v2, "3gpp2"

    iput-object v2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    goto :goto_1

    .line 205
    :cond_1
    const-string v2, "3gpp"

    iput-object v2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 207
    :goto_1
    return-object v1

    .line 209
    .end local v1    # "msg":Lmediatek/telephony/MtkSmsMessage;
    :cond_2
    const-string v1, "MtkSmsMessage"

    const-string v2, "createFromEfRecord(): wrappedMessage is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist createFromEfRecord(I[BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;
    .locals 5
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    const/4 v1, 0x0

    .line 824
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromEfRecord(): format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkSmsMessage"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v2, "3gpp2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 828
    :cond_0
    const-string v2, "3gpp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->createFromEfRecord(I[B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 836
    :goto_0
    if-eqz v0, :cond_1

    .line 837
    new-instance v2, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v2, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    move-object v1, v2

    .line 838
    iput-object p2, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 840
    :cond_1
    return-object v1

    .line 832
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromEfRecord(): unsupported message format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist createFromPdu([B)Lmediatek/telephony/MtkSmsMessage;
    .locals 7
    .param p0, "pdu"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 129
    .local v0, "message":Lmediatek/telephony/MtkSmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 130
    .local v1, "activePhone":I
    const-string v2, "3gpp2"

    const-string v3, "3gpp"

    const/4 v4, 0x2

    if-ne v4, v1, :cond_0

    .line 131
    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 132
    .local v5, "format":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v5}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    iget-object v6, v0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v6, :cond_3

    .line 136
    :cond_1
    if-ne v4, v1, :cond_2

    .line 137
    move-object v2, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move-object v5, v2

    .line 138
    invoke-static {p0, v5}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v0

    .line 140
    :cond_3
    return-object v0
.end method

.method public static blacklist createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;
    .locals 4
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .line 158
    const-string v0, "3gpp2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MtkSmsMessage"

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 160
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->newMtkSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    move-result-object v0

    goto :goto_0

    .line 162
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    const-string v0, "3gpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-static {p0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->createFromPdu([B)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    move-result-object v0

    .line 169
    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    .line 170
    new-instance v1, Lmediatek/telephony/MtkSmsMessage;

    invoke-direct {v1, v0}, Lmediatek/telephony/MtkSmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 171
    .local v1, "msg":Lmediatek/telephony/MtkSmsMessage;
    iput-object p1, v1, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    .line 172
    return-object v1

    .line 174
    .end local v1    # "msg":Lmediatek/telephony/MtkSmsMessage;
    :cond_1
    const-string v3, "createFromPdu(): wrappedMessage is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-object v1

    .line 165
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v1
.end method

.method public static blacklist fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    .line 266
    .local v0, "isCdma":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 267
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    :goto_0
    nop

    .line 275
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v3, v2, :cond_6

    .line 277
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v3, :cond_1

    .line 278
    const/4 v3, 0x7

    .local v3, "udhLength":I
    goto :goto_2

    .line 279
    .end local v3    # "udhLength":I
    :cond_1
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v3, :cond_3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v3, :cond_2

    goto :goto_1

    .line 282
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "udhLength":I
    goto :goto_2

    .line 280
    .end local v3    # "udhLength":I
    :cond_3
    :goto_1
    const/4 v3, 0x4

    .line 285
    .restart local v3    # "udhLength":I
    :goto_2
    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v2, :cond_4

    .line 286
    add-int/lit8 v3, v3, 0x6

    .line 289
    :cond_4
    if-eqz v3, :cond_5

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 293
    :cond_5
    rsub-int v3, v3, 0xa0

    .line 294
    .local v3, "limit":I
    goto :goto_3

    .line 295
    .end local v3    # "limit":I
    :cond_6
    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v3, v2, :cond_7

    .line 296
    const/16 v3, 0x86

    .line 303
    .restart local v3    # "limit":I
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->hasEmsSupport()Z

    move-result v4

    if-nez v4, :cond_8

    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_8

    .line 304
    add-int/lit8 v3, v3, -0x2

    goto :goto_3

    .line 307
    .end local v3    # "limit":I
    :cond_7
    const/16 v3, 0x8c

    .line 311
    .restart local v3    # "limit":I
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .line 312
    .local v4, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 313
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x11101b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 314
    invoke-static {p0, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    .line 316
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 317
    move-object v4, p0

    .line 319
    :cond_a
    const/4 v6, 0x0

    .line 320
    .local v6, "pos":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 321
    .local v7, "textLen":I
    new-instance v8, Ljava/util/ArrayList;

    iget v9, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    if-ge v6, v7, :cond_f

    .line 323
    const/4 v9, 0x0

    .line 324
    .local v9, "nextPos":I
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v2, :cond_c

    .line 325
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v10

    if-eqz v10, :cond_b

    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v2, :cond_b

    .line 327
    sub-int v10, v7, v6

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "nextPos":I
    .local v10, "nextPos":I
    goto :goto_5

    .line 330
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_b
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v4, v6, v3, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v10

    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    goto :goto_5

    .line 334
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_c
    invoke-static {v6, v3, v4}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v10

    .line 336
    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    :goto_5
    if-le v10, v6, :cond_e

    if-le v10, v7, :cond_d

    goto :goto_6

    .line 341
    :cond_d
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    move v6, v10

    .line 343
    .end local v10    # "nextPos":I
    goto :goto_4

    .line 337
    .restart local v10    # "nextPos":I
    :cond_e
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " >= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " or "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "MtkSmsMessage"

    invoke-static {v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v10    # "nextPos":I
    :cond_f
    return-object v8
.end method

.method public static blacklist fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    .line 633
    .local v0, "isCdma":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 634
    invoke-static {p0, v1, p1}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 636
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    :goto_0
    nop

    .line 644
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 646
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v2, :cond_1

    .line 647
    const/4 v2, 0x7

    .local v2, "udhLength":I
    goto :goto_2

    .line 648
    .end local v2    # "udhLength":I
    :cond_1
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v2, :cond_3

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v2, :cond_2

    goto :goto_1

    .line 651
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "udhLength":I
    goto :goto_2

    .line 649
    .end local v2    # "udhLength":I
    :cond_3
    :goto_1
    const/4 v2, 0x4

    .line 654
    .restart local v2    # "udhLength":I
    :goto_2
    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v4, v3, :cond_4

    .line 655
    add-int/lit8 v2, v2, 0x6

    .line 658
    :cond_4
    if-eqz v2, :cond_5

    .line 659
    add-int/lit8 v2, v2, 0x1

    .line 662
    :cond_5
    rsub-int v2, v2, 0xa0

    .line 663
    .local v2, "limit":I
    goto :goto_3

    .line 664
    .end local v2    # "limit":I
    :cond_6
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v2, v3, :cond_7

    .line 665
    const/16 v2, 0x86

    .line 672
    .restart local v2    # "limit":I
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->hasEmsSupport()Z

    move-result v4

    if-nez v4, :cond_8

    iget v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_8

    .line 673
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    .line 676
    .end local v2    # "limit":I
    :cond_7
    const/16 v2, 0x8c

    .line 680
    .restart local v2    # "limit":I
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .line 681
    .local v4, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 682
    .local v5, "r":Landroid/content/res/Resources;
    const v6, 0x11101b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 683
    invoke-static {p0, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    .line 685
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 686
    move-object v4, p0

    .line 688
    :cond_a
    const/4 v6, 0x0

    .line 689
    .local v6, "pos":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 690
    .local v7, "textLen":I
    new-instance v8, Ljava/util/ArrayList;

    iget v9, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 691
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    if-ge v6, v7, :cond_f

    .line 692
    const/4 v9, 0x0

    .line 693
    .local v9, "nextPos":I
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v3, :cond_c

    .line 694
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v10

    if-eqz v10, :cond_b

    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v3, :cond_b

    .line 696
    sub-int v10, v7, v6

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "nextPos":I
    .local v10, "nextPos":I
    goto :goto_5

    .line 699
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_b
    iget v10, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v4, v6, v2, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v10

    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    goto :goto_5

    .line 703
    .end local v10    # "nextPos":I
    .restart local v9    # "nextPos":I
    :cond_c
    invoke-static {v6, v2, v4}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v10

    .line 705
    .end local v9    # "nextPos":I
    .restart local v10    # "nextPos":I
    :goto_5
    if-le v10, v6, :cond_e

    if-le v10, v7, :cond_d

    goto :goto_6

    .line 710
    :cond_d
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    move v6, v10

    .line 712
    .end local v10    # "nextPos":I
    goto :goto_4

    .line 706
    .restart local v10    # "nextPos":I
    :cond_e
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " >= "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " or "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ")"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "MtkSmsMessage"

    invoke-static {v9, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v10    # "nextPos":I
    :cond_f
    return-object v8
.end method

.method private static final blacklist getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1

    .line 447
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;-><init>()V

    return-object v0

    .line 450
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;-><init>()V

    return-object v0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .line 399
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0

    .line 403
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 407
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    :cond_1
    return-object v1
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .line 481
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    nop

    .line 484
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    .line 482
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0

    .line 486
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 490
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;SS[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "originalPort"    # S
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 511
    const-string v0, "MtkSmsMessage"

    const-string v1, "[xj android.telephony.SmsMessage getSubmitPdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-static {p0, p1, p2, p4, p5}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 521
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 428
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0

    .line 432
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 436
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method private blacklist isCdma()Z
    .locals 2

    .line 850
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lmediatek/telephony/MtkSmsMessage;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 851
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected static blacklist useCdmaFormatForMoSms()Z
    .locals 2

    .line 885
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getDefault()Lmediatek/telephony/MtkSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Lmediatek/telephony/MtkSmsManager;->isImsSmsSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->isCdmaVoice()Z

    move-result v0

    return v0

    .line 890
    :cond_0
    invoke-static {}, Lmediatek/telephony/MtkSmsManager;->getDefault()Lmediatek/telephony/MtkSmsManager;

    move-result-object v0

    invoke-virtual {v0}, Lmediatek/telephony/MtkSmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist fragmentTextUsingTed(ILjava/lang/String;Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "subId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, "useCdmaFormat":Z
    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 735
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_1

    .line 739
    :cond_1
    nop

    .line 740
    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "3gpp2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 744
    :goto_1
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v1, v2, :cond_7

    .line 746
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v1, :cond_2

    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v1, :cond_2

    .line 747
    const/4 v1, 0x7

    .local v1, "udhLength":I
    goto :goto_3

    .line 748
    .end local v1    # "udhLength":I
    :cond_2
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v1, :cond_4

    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v1, :cond_3

    goto :goto_2

    .line 751
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "udhLength":I
    goto :goto_3

    .line 749
    .end local v1    # "udhLength":I
    :cond_4
    :goto_2
    const/4 v1, 0x4

    .line 754
    .restart local v1    # "udhLength":I
    :goto_3
    iget v3, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v3, v2, :cond_5

    .line 755
    add-int/lit8 v1, v1, 0x6

    .line 758
    :cond_5
    if-eqz v1, :cond_6

    .line 759
    add-int/lit8 v1, v1, 0x1

    .line 762
    :cond_6
    rsub-int v1, v1, 0xa0

    .line 763
    .local v1, "limit":I
    goto :goto_4

    .line 764
    .end local v1    # "limit":I
    :cond_7
    iget v1, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v1, v2, :cond_8

    .line 765
    const/16 v1, 0x86

    .line 772
    .restart local v1    # "limit":I
    invoke-static {}, Lmediatek/telephony/MtkSmsMessage;->hasEmsSupport()Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_9

    .line 773
    add-int/lit8 v1, v1, -0x2

    goto :goto_4

    .line 776
    .end local v1    # "limit":I
    :cond_8
    const/16 v1, 0x8c

    .line 780
    .restart local v1    # "limit":I
    :cond_9
    :goto_4
    const/4 v3, 0x0

    .line 781
    .local v3, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 782
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x11101b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 783
    invoke-static {p2, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    .line 785
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 786
    move-object v3, p2

    .line 788
    :cond_b
    const/4 v5, 0x0

    .line 789
    .local v5, "pos":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 790
    .local v6, "textLen":I
    new-instance v7, Ljava/util/ArrayList;

    iget v8, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 791
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    if-ge v5, v6, :cond_10

    .line 792
    const/4 v8, 0x0

    .line 793
    .local v8, "nextPos":I
    iget v9, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v9, v2, :cond_d

    .line 794
    if-eqz v0, :cond_c

    iget v9, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v9, v2, :cond_c

    .line 796
    sub-int v9, v6, v5

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v5

    .end local v8    # "nextPos":I
    .local v9, "nextPos":I
    goto :goto_6

    .line 799
    .end local v9    # "nextPos":I
    .restart local v8    # "nextPos":I
    :cond_c
    iget v9, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v3, v5, v1, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v9

    .end local v8    # "nextPos":I
    .restart local v9    # "nextPos":I
    goto :goto_6

    .line 803
    .end local v9    # "nextPos":I
    .restart local v8    # "nextPos":I
    :cond_d
    invoke-static {v5, v1, v3}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v9

    .line 805
    .end local v8    # "nextPos":I
    .restart local v9    # "nextPos":I
    :goto_6
    if-le v9, v5, :cond_f

    if-le v9, v6, :cond_e

    goto :goto_7

    .line 810
    :cond_e
    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    move v5, v9

    .line 812
    .end local v9    # "nextPos":I
    goto :goto_5

    .line 806
    .restart local v9    # "nextPos":I
    :cond_f
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentText failed ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " >= "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " or "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MtkSmsMessage"

    invoke-static {v8, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v9    # "nextPos":I
    :cond_10
    return-object v7
.end method

.method public blacklist getDestinationAddress()Ljava/lang/String;
    .locals 2

    .line 532
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v0, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;

    .line 534
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 533
    return-object v0

    .line 536
    :cond_0
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    .line 537
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 536
    return-object v0
.end method

.method public blacklist getEncodingType()I
    .locals 2

    .line 865
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mFormat:Ljava/lang/String;

    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x0

    return v0

    .line 868
    :cond_0
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;

    .line 869
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getEncodingType()I

    move-result v0

    .line 868
    return v0
.end method

.method public blacklist getSmsc()[B
    .locals 7

    .line 560
    const-string v0, "MtkSmsMessage"

    const-string v1, "getSmsc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Lmediatek/telephony/MtkSmsMessage;->getPdu()[B

    move-result-object v1

    .line 563
    .local v1, "pdu":[B
    invoke-direct {p0}, Lmediatek/telephony/MtkSmsMessage;->isCdma()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 564
    const-string v2, "getSmsc with CDMA and return null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-object v3

    .line 568
    :cond_0
    if-nez v1, :cond_1

    .line 569
    const-string v2, "pdu is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-object v3

    .line 573
    :cond_1
    const/4 v2, 0x0

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    .line 574
    .local v4, "smscLen":I
    new-array v5, v4, [B

    .line 577
    .local v5, "smsc":[B
    :try_start_0
    array-length v6, v5

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    return-object v5

    .line 579
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "Out of boudns"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v3
.end method

.method public blacklist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .line 548
    iget-object v0, p0, Lmediatek/telephony/MtkSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method
