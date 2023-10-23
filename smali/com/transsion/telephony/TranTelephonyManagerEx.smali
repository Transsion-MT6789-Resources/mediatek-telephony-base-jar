.class public Lcom/transsion/telephony/TranTelephonyManagerEx;
.super Ljava/lang/Object;
.source "TranTelephonyManagerEx.java"


# static fields
.field public static final blacklist ACTION_PT_CONFIG_CHANGED:Ljava/lang/String; = "com.transsion.intent.action.ACTION_PT_CONFIG_CHANGED"

.field public static final blacklist ACTION_PT_LOCAL_SIM_CONFIG_CHANGED:Ljava/lang/String; = "com.transsion.intent.action.ACTION_PT_LOCAL_SIM_CONFIG_CHANGED"

.field public static final blacklist ACTION_TRUSTED_DEVICE_LOCKED:Ljava/lang/String; = "com.transsion.phone.action.RELIABLE_DEVICE_LOCKED"

.field private static final blacklist DEBUG:Z = true

.field public static final blacklist DEVICE_CREDIBLE:I = 0x0

.field public static final blacklist DEVICE_LOCKED:I = 0x2

.field public static final blacklist DEVICE_UNKNOWN:I = -0x1

.field public static final blacklist DEVICE_UNLOCKED:I = 0x1

.field public static final blacklist EXTRA_DEVICE_STATE:Ljava/lang/String; = "deviceState"

.field public static final blacklist EXTRA_NEW_POLICY:Ljava/lang/String; = "new_policy"

.field public static final blacklist EXTRA_ORIGIN_POLICY:Ljava/lang/String; = "org_policy"

.field public static final blacklist EXTRA_SLOTID:Ljava/lang/String; = "slotId"

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "TranTelephonyManagerEx"

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_CALL:J = 0x4L

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_DC:J = 0x1L

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_DEFAULT:J = 0x0L

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_INVALID:J = 0x400L

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_SIM_DISABLED:J = 0x20L

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_SIM_ENABLED:J = 0x10L

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_SMS:J = 0x2L

.field public static final blacklist PT_RESTRICT_TYPE_BITMASK_SS:J = 0x8L

.field public static final blacklist SIM_ALWAYS_DISABLED:I = 0x2

.field public static final blacklist SIM_ALWAYS_ENABLED:I = 0x1

.field public static final blacklist SIM_NORMAL:I

.field private static blacklist sInstance:Lcom/transsion/telephony/TranTelephonyManagerEx;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/transsion/telephony/TranTelephonyManagerEx;

    invoke-direct {v0}, Lcom/transsion/telephony/TranTelephonyManagerEx;-><init>()V

    sput-object v0, Lcom/transsion/telephony/TranTelephonyManagerEx;->sInstance:Lcom/transsion/telephony/TranTelephonyManagerEx;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/telephony/TranTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/transsion/telephony/TranTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public static blacklist getDefault()Lcom/transsion/telephony/TranTelephonyManagerEx;
    .locals 1

    .line 82
    sget-object v0, Lcom/transsion/telephony/TranTelephonyManagerEx;->sInstance:Lcom/transsion/telephony/TranTelephonyManagerEx;

    return-object v0
.end method

.method private blacklist getSimMccMnc(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .line 429
    const-string v0, ""

    .line 430
    .local v0, "plmn":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 431
    .local v1, "subIds":[I
    iget-object v2, p0, Lcom/transsion/telephony/TranTelephonyManagerEx;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 432
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 433
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 434
    .local v3, "simstate":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSimMccMnc] simstate["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/telephony/TranTelephonyManagerEx;->simlockLog(Ljava/lang/String;)V

    .line 435
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_1

    array-length v4, v1

    if-gtz v4, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 439
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 436
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-object v0

    .line 441
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "simstate":I
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vendor.ril.usim.gsm_mcc_mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSimMccMnc] plmn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/telephony/TranTelephonyManagerEx;->simlockLog(Ljava/lang/String;)V

    .line 445
    return-object v0
.end method

.method public static blacklist simlockLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 424
    const-string v0, "TranTelephonyManagerEx"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method


# virtual methods
.method public blacklist enterDeviceLock()V
    .locals 3

    .line 325
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 326
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 327
    invoke-interface {v1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->enterDeviceLock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#enterDeviceLock"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 329
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#enterDeviceLock"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 334
    :goto_1
    return-void
.end method

.method public blacklist exitDeviceLock(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 338
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 339
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 340
    invoke-interface {v1, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->exitDeviceLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#exitDeviceLock"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 342
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#exitDeviceLock"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 347
    :goto_1
    return-void
.end method

.method public blacklist getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;
    .locals 1

    .line 89
    const-string v0, "tranphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/internal/telephony/ITranTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPTWhiteList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    const-string v0, "TranTelephonyManagerEx"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v2

    .line 296
    .local v2, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v2, :cond_0

    .line 297
    invoke-interface {v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->getPTWhiteList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    move-object v1, v0

    .line 303
    .end local v2    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :cond_0
    :goto_0
    goto :goto_1

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Permission error calling ITelephony#getPTWhiteList"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 299
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 300
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error calling ITelephony#getPTWhiteList"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 304
    :goto_1
    return-object v1
.end method

.method public blacklist getPtPolicyforSlotIndex(I)J
    .locals 6
    .param p1, "slotId"    # I

    .line 278
    const-string v0, "TranTelephonyManagerEx"

    const-wide/16 v1, 0x0

    .line 280
    .local v1, "result":J
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v3

    .line 281
    .local v3, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v3, :cond_0

    .line 282
    invoke-interface {v3, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->getPtPolicyforSlotIndex(I)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    move-wide v1, v0

    .line 288
    .end local v3    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :cond_0
    :goto_0
    goto :goto_1

    .line 286
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "Permission error calling ITelephony#getPtPolicyforSlotIndex"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 284
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 285
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling ITelephony#getPtPolicyforSlotIndex"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 289
    :goto_1
    return-wide v1
.end method

.method public blacklist isDataConfigChanged(JJ)Z
    .locals 4
    .param p1, "orgPolicy"    # J
    .param p3, "newPolicy"    # J

    .line 411
    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    and-long v2, p1, v0

    and-long/2addr v0, p3

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isRadioSwitching(I)Z
    .locals 4
    .param p1, "subId"    # I

    .line 200
    const-string v0, "TranTelephonyManagerEx"

    const/4 v1, 0x0

    .line 202
    .local v1, "isSwitching":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v2

    .line 203
    .local v2, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v2, :cond_0

    .line 204
    invoke-interface {v2, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->isRadioSwitching(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 210
    .end local v2    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :cond_0
    :goto_0
    goto :goto_1

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Permission error calling ITelephony#getNetworkInfo"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 206
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error calling ITelephony#getNetworkInfo"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 212
    :goto_1
    return v1
.end method

.method public blacklist isSmsConfigChanged(JJ)Z
    .locals 4
    .param p1, "orgPolicy"    # J
    .param p3, "newPolicy"    # J

    .line 417
    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x2

    and-long v2, p1, v0

    and-long/2addr v0, p3

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isTtyModeSupported()Z
    .locals 3

    .line 94
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 95
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->isTtyModeSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 95
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :cond_0
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#isTtyModeSupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#isTtyModeSupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 103
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyCameraEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v0

    .line 190
    .local v0, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->notifyCameraEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :cond_0
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranTelephonyManagerEx"

    const-string v2, "Error calling ITelephony#toggleCameraEvent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist queryDeviceLockedStatus()I
    .locals 4

    .line 309
    const-string v0, "TranTelephonyManagerEx"

    const/4 v1, -0x1

    .line 311
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v2

    .line 312
    .local v2, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v2}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->queryDeviceLockedStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 319
    .end local v2    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :cond_0
    :goto_0
    goto :goto_1

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "Permission error calling ITelephony#queryDeviceLockedStatus"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 315
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 316
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error calling ITelephony#queryDeviceLockedStatus"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 320
    :goto_1
    return v1
.end method

.method public blacklist queryNetworkLock(II)Landroid/os/Bundle;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "category"    # I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNetworkLock subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v2, "phoneEx"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 227
    :goto_0
    goto :goto_1

    .line 224
    :catch_0
    move-exception v2

    .line 226
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 222
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 223
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 228
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bundle  is null ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v3, "no"

    goto :goto_2

    :cond_0
    const-string v3, "yes"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v0
.end method

.method public blacklist registerImsCallback(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 148
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 149
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->registerImsCallback(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#registerImsCallback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#registerImsCallback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 157
    :goto_1
    return-void
.end method

.method public blacklist registerNwCallback(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 162
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 163
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v1, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->registerNwCallback(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#registerNwCallback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 166
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#registerNwCallback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 171
    :goto_1
    return-void
.end method

.method public blacklist sendImsCommandToTele(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "modemEeImsATList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 136
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v1, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->sendImsCommandToTele(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#sendImsCommandToTele"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 139
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#sendImsCommandToTele"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 144
    :goto_1
    return-void
.end method

.method public blacklist sendModemEeRelatedInfoCmd()V
    .locals 3

    .line 122
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 123
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->sendModemEeRelatedInfoCmd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#sendModemEeRelatedInfoCmd"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 126
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 127
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#sendModemEeRelatedInfoCmd"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 131
    :goto_1
    return-void
.end method

.method public blacklist sendNwAtCmd(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 108
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 109
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v1, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->sendNwAtCmd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#getNetworkInfo"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 112
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#getNetworkInfo"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 117
    :goto_1
    return-void
.end method

.method public blacklist setPTRestrictionforSlotIndex(IJ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "policy"    # J

    .line 252
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 253
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->setPTRestrictionforSlotIndex(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#setPTRestrictionforSlotIndex"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 256
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#setPTRestrictionforSlotIndex"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 261
    :goto_1
    return-void
.end method

.method public blacklist setPTWhiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "plmnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 266
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1, p1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->setPTWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#setPTWhiteList"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 270
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#setPTWhiteList"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 275
    :goto_1
    return-void
.end method

.method public blacklist shouldInterceptCalls(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 351
    invoke-direct {p0, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getSimMccMnc(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "plmn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 353
    return v2

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPTWhiteList()Ljava/util/List;

    move-result-object v1

    .line 357
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getDefault()Lcom/transsion/telephony/TranTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPtPolicyforSlotIndex(I)J

    move-result-wide v3

    .line 358
    .local v3, "policy":J
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-wide/16 v5, 0x4

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 359
    const/4 v2, 0x1

    return v2

    .line 361
    :cond_2
    return v2
.end method

.method public blacklist shouldInterceptDc(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 393
    invoke-direct {p0, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getSimMccMnc(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "plmn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 395
    return v2

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPTWhiteList()Ljava/util/List;

    move-result-object v1

    .line 399
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getDefault()Lcom/transsion/telephony/TranTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPtPolicyforSlotIndex(I)J

    move-result-wide v3

    .line 400
    .local v3, "policy":J
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 401
    const/4 v2, 0x1

    return v2

    .line 403
    :cond_2
    return v2
.end method

.method public blacklist shouldInterceptSms(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 365
    invoke-direct {p0, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getSimMccMnc(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "plmn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 367
    return v2

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPTWhiteList()Ljava/util/List;

    move-result-object v1

    .line 371
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getDefault()Lcom/transsion/telephony/TranTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPtPolicyforSlotIndex(I)J

    move-result-wide v3

    .line 372
    .local v3, "policy":J
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-wide/16 v5, 0x2

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 373
    const/4 v2, 0x1

    return v2

    .line 375
    :cond_2
    return v2
.end method

.method public blacklist shouldInterceptSs(I)Z
    .locals 9
    .param p1, "phoneId"    # I

    .line 379
    invoke-direct {p0, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getSimMccMnc(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "plmn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 381
    return v2

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPTWhiteList()Ljava/util/List;

    move-result-object v1

    .line 385
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getDefault()Lcom/transsion/telephony/TranTelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getPtPolicyforSlotIndex(I)J

    move-result-wide v3

    .line 386
    .local v3, "policy":J
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-wide/16 v5, 0x8

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 387
    const/4 v2, 0x1

    return v2

    .line 389
    :cond_2
    return v2
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;)I
    .locals 4
    .param p1, "subId"    # I
    .param p2, "strPasswd"    # Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplyNetworkDepersonalization subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TranTelephonyManagerEx"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x1

    .line 237
    .local v0, "result":I
    :try_start_0
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 243
    :goto_0
    goto :goto_1

    .line 240
    :catch_0
    move-exception v3

    .line 242
    .local v3, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 238
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 239
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v3    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 244
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v0
.end method

.method public blacklist tranPtSimSwitchState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterNwCallback()V
    .locals 3

    .line 175
    const-string v0, "TranTelephonyManagerEx"

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/telephony/TranTelephonyManagerEx;->getITranTelephony()Lcom/transsion/internal/telephony/ITranTelephonyEx;

    move-result-object v1

    .line 176
    .local v1, "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1}, Lcom/transsion/internal/telephony/ITranTelephonyEx;->unregisterNwCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v1    # "telephony":Lcom/transsion/internal/telephony/ITranTelephonyEx;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Permission error calling ITelephony#unregisterNwCallback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 179
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error calling ITelephony#unregisterNwCallback"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 184
    :goto_1
    return-void
.end method
