.class public final enum Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
.super Ljava/lang/Enum;
.source "MtkIccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VsimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum LOCAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

.field public static final enum SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 303
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v1, "LOCAL_SIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->LOCAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 304
    new-instance v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v3, "REMOTE_SIM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 305
    new-instance v3, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v5, "SOFT_AKA_SIM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 306
    new-instance v5, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v7, "PHYSICAL_AKA_SIM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 307
    new-instance v7, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    const-string v9, "PHYSICAL_SIM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    .line 302
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 302
    const-class v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;
    .locals 1

    .line 302
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    return-object v0
.end method


# virtual methods
.method public isAllowOnlyVsimNetwork()Z
    .locals 1

    .line 326
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowReqNonVsimNetwork()Z
    .locals 1

    .line 322
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowVsimConnection()Z
    .locals 1

    .line 318
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne p0, v0, :cond_0

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

.method public isDataRoamingAllowed()Z
    .locals 1

    .line 314
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->REMOTE_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne p0, v0, :cond_0

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

.method public isUserDataAllowed()Z
    .locals 1

    .line 310
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->SOFT_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-ne p0, v0, :cond_0

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

.method public isVsimCard()Z
    .locals 1

    .line 330
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;->PHYSICAL_AKA_SIM:Lcom/mediatek/internal/telephony/MtkIccCardConstants$VsimType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
