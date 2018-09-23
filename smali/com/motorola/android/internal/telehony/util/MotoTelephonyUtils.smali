.class public Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;
.super Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
.source "MotoTelephonyUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MotoTelephonyUtils"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;->sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;->sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    .line 19
    :cond_0
    sget-object v1, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;->sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 15
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public isLpluslSupport()Z
    .locals 4

    .line 28
    invoke-super {p0}, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->isLpluslSupport()Z

    move-result v0

    .line 29
    .local v0, "isLpluslSupport":Z
    iget-object v1, p0, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    .line 30
    .local v1, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v0

    .line 33
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLpluslSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;->logd(Ljava/lang/String;)V

    .line 34
    return v0
.end method
