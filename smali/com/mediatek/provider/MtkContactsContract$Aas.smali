.class public final Lcom/mediatek/provider/MtkContactsContract$Aas;
.super Ljava/lang/Object;
.source "MtkContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/provider/MtkContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aas"
.end annotation


# static fields
.field public static final blacklist AAS_METHOD:Ljava/lang/String; = "get_aas"

.field public static final blacklist ENCODE_SYMBOL:Ljava/lang/String; = "-"

.field public static final blacklist KEY_AAS:Ljava/lang/String; = "aas"

.field public static final blacklist LABEL_EMPTY:Ljava/lang/String; = ""

.field public static final blacklist PHONE_TYPE_AAS:I = 0x65

.field public static final blacklist PHONE_TYPE_EMPTY:I = 0x66


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist buildIndicator(II)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # I
    .param p1, "indexInSim"    # I

    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    return-object v0
.end method

.method public static blacklist getLabel(Landroid/content/ContentResolver;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "indicator"    # Ljava/lang/CharSequence;

    .line 317
    const-string v0, ""

    if-nez p1, :cond_0

    .line 318
    return-object v0

    .line 320
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 321
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 320
    const-string v4, "get_aas"

    invoke-virtual {p0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 322
    .local v1, "response":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 323
    const-string v2, "aas"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 325
    :cond_1
    return-object v0
.end method
