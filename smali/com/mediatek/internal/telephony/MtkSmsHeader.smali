.class public Lcom/mediatek/internal/telephony/MtkSmsHeader;
.super Lcom/android/internal/telephony/SmsHeader;
.source "MtkSmsHeader.java"


# static fields
.field public static final blacklist CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field public static final blacklist NATIONAL_LANGUAGE_LOCKING_SHIFT_LENGTH:I = 0x3

.field public static final blacklist NATIONAL_LANGUAGE_SINGLE_SHIFT_LENGTH:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "SmsHeader"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    return-void
.end method

.method public static blacklist getSubmitPduHeader(II)[B
    .locals 7
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I

    .line 68
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduHeader(IIII)[B
    .locals 6
    .param p0, "destPort"    # I
    .param p1, "refNumber"    # I
    .param p2, "seqNumber"    # I
    .param p3, "msgCount"    # I

    .line 83
    const/4 v4, -0x1

    const/4 v5, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduHeaderWithLang(III)[B
    .locals 6
    .param p0, "destPort"    # I
    .param p1, "singleShiftId"    # I
    .param p2, "lockingShiftId"    # I

    .line 93
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduHeaderWithLang(IIIIII)[B
    .locals 7
    .param p0, "destPort"    # I
    .param p1, "refNumber"    # I
    .param p2, "seqNumber"    # I
    .param p3, "msgCount"    # I
    .param p4, "singleShiftId"    # I
    .param p5, "lockingShiftId"    # I

    .line 112
    const/4 v1, 0x0

    move v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSubmitPduHeaderWithLang(IIIIIII)[B
    .locals 3
    .param p0, "destPort"    # I
    .param p1, "originalPort"    # I
    .param p2, "refNumber"    # I
    .param p3, "seqNumber"    # I
    .param p4, "msgCount"    # I
    .param p5, "singleShiftId"    # I
    .param p6, "lockingShiftId"    # I

    .line 132
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkSmsHeader;-><init>()V

    .line 134
    .local v0, "smsHeader":Lcom/mediatek/internal/telephony/MtkSmsHeader;
    if-ltz p0, :cond_0

    .line 135
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 136
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 137
    iput p1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 138
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 139
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 142
    .end local v1    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_0
    if-lez p4, :cond_1

    .line 143
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 144
    .local v1, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 145
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 146
    iput p4, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 154
    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 157
    .end local v1    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    if-gtz p5, :cond_2

    if-lez p6, :cond_3

    .line 158
    :cond_2
    iput p5, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageShiftTable:I

    .line 159
    iput p6, v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;->languageTable:I

    .line 162
    :cond_3
    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    return-object v1
.end method
