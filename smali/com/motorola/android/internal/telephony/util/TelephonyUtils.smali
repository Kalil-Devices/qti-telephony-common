.class public Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field public static IS_QTI_OEMHOOK:Z

.field protected static sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->isQtiOemHook()Z

    move-result v0

    sput-boolean v0, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->IS_QTI_OEMHOOK:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
    .locals 1

    .line 23
    sget-object v0, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    .line 19
    :cond_0
    sget-object v1, Lcom/motorola/android/internal/telephony/util/TelephonyUtils;->sInstance:Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
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

.method private static isQtiOemHook()Z
    .locals 4

    .line 38
    const-string v0, "rild.libpath"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "libFile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "libril-qc-hal-qmi.so"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v1, 0x1

    return v1

    .line 43
    :cond_0
    return v2

    .line 46
    :cond_1
    return v2
.end method


# virtual methods
.method public isLpluslSupport()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method
