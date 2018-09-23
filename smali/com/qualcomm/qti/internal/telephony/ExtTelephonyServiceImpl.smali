.class public Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.super Lorg/codeaurora/internal/IExtTelephony$Stub;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_QCRILMSGSERVICE_DEAD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyServiceImpl"

.field private static final QCRILMSGSERVICE_CONNECT_DELAY_MILLIS:I = 0xfa0

.field private static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel"

.field private static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

.field private static final TELEPHONY_SERVICE_NAME:Ljava/lang/String; = "extphone"

.field private static mContext:Landroid/content/Context;

.field private static final phoneCount:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# instance fields
.field private mDsda:Lorg/codeaurora/internal/IDsda;

.field private mHandler:Landroid/os/Handler;

.field private mOemHookIndication:[Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;

.field private mQcrilMsgBound:Z

.field private mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

.field private final mQcrilMsgServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mQcrilMsgTunnelConnection:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->phoneCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 75
    invoke-direct {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgBound:Z

    .line 302
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 305
    sget v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->phoneCount:I

    new-array v2, v2, [Lcom/qualcomm/qti/internal/telephony/MotoOemHookIndication;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mOemHookIndication:[Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;

    .line 307
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgTunnelConnection:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;

    .line 309
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 319
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$2;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Landroid/os/Handler;

    .line 76
    const-string v2, "init constructor "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 79
    nop

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->phoneCount:I

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mOemHookIndication:[Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/MotoOemHookIndication;

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/RIL;

    invoke-direct {v3, v4}, Lcom/qualcomm/qti/internal/telephony/MotoOemHookIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    aput-object v3, v2, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;

    invoke-direct {v1, p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgTunnelConnection:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;

    .line 84
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->bindToQcrilMsgTunnelService()V

    .line 87
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    const-string v0, "extphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 90
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 47
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 47
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->bindToQcrilMsgTunnelService()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 47
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p1, "x1"    # Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 47
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object p1
.end method

.method static synthetic access$500()I
    .locals 1

    .line 47
    sget v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->phoneCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 47
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)[Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 47
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mOemHookIndication:[Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;

    return-object v0
.end method

.method static synthetic access$802(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgBound:Z

    return p1
.end method

.method private bindToQcrilMsgTunnelService()V
    .locals 4

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qcrilmsgtunnel"

    const-string v2, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v1, "Starting QcrilMsgTunnel Service"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 336
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgTunnelConnection:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 338
    .local v1, "status":Z
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 2

    .line 69
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    const-class v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-enter v0

    .line 58
    :try_start_0
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 59
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;-><init>()V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    goto :goto_0

    .line 62
    :cond_0
    const-string v1, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 288
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 292
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .line 368
    if-eqz p1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 371
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 106
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    move-result v0

    .line 106
    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 112
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v0

    .line 112
    return v0
.end method

.method public getActiveSubscription()I
    .locals 1

    .line 219
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPrimaryCardSlotId()I
    .locals 1

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 94
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 94
    return v0
.end method

.method public getPhoneIdForECall()I
    .locals 1

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryCarrierSlotId()I
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryStackPhoneId()I
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getSmscAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 259
    const-string v0, ""

    return-object v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 100
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccCardProvisioningUserPreference(I)I

    move-result v0

    .line 100
    return v0
.end method

.method public invokeOemRilRequestRawAsync(I[BLorg/codeaurora/internal/IMotoOemCB;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "motoOemCB"    # Lorg/codeaurora/internal/IMotoOemCB;

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "returnValue":I
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-eqz v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw + oemReq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 412
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;

    invoke-direct {v1, p3}, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;-><init>(Lorg/codeaurora/internal/IMotoOemCB;)V

    .line 413
    .local v1, "OemHookcb":Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v2, p2, v1, p1}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 414
    .end local v1    # "OemHookcb":Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;
    goto :goto_0

    .line 415
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 416
    if-lez v0, :cond_1

    mul-int/lit8 v0, v0, -0x1

    .line 422
    :cond_1
    :goto_0
    goto :goto_1

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "sendOemRilRequestRaw: Runtime Exception"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 420
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v0

    .line 421
    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, -0x1

    .line 424
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return v0
.end method

.method public invokeOemRilRequestRawForPhone(I[B[B)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B

    .line 381
    const/4 v0, 0x0

    .line 384
    .local v0, "returnValue":I
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-eqz v1, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRawForSubscriber + oemReq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v1, p2, p3, p1}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRaw([B[BI)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 391
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 392
    if-lez v0, :cond_1

    mul-int/lit8 v0, v0, -0x1

    .line 398
    :cond_1
    :goto_0
    goto :goto_1

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "sendOemRilRequestRaw: Runtime Exception"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 396
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v0

    .line 397
    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, -0x1

    .line 400
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return v0
.end method

.method public isDeviceInSingleStandby()Z
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isDsdaEnabled()Z
    .locals 2

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public isFdnEnabled()Z
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public isLocalEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isPotentialLocalEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimaryCarrierSlotId(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public isSMSPromptEnabled()Z
    .locals 2

    .line 118
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public isVendorApkAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 277
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    move v2, v1

    .line 279
    .local v2, "isApkAvailable":Z
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    const/4 v2, 0x1

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor apk not available for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 284
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v2
.end method

.method public setDsdaAdapter(Lorg/codeaurora/internal/IDsda;)V
    .locals 0
    .param p1, "a"    # Lorg/codeaurora/internal/IDsda;

    .line 250
    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "enable"    # Z

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public setPrimaryCardOnSlot(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 236
    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 126
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 130
    return-void
.end method

.method public setSmscAddress(ILjava/lang/String;)Z
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    .locals 1
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p4, "phoneId"    # I

    .line 135
    const-string v0, "supplyIccDepersonalization"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V

    .line 138
    return-void
.end method

.method public switchToActiveSub(I)V
    .locals 0
    .param p1, "sub"    # I

    .line 196
    return-void
.end method
