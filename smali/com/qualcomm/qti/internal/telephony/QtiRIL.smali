.class public final Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.super Lcom/android/internal/telephony/RIL;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field static final QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "QTIRILJ"


# instance fields
.field final mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

.field mQtiPhoneId:I

.field private mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

.field mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;

.field final mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;

.field private final mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 145
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 146
    const-string v0, "QTIRILJ"

    const-string v1, "QtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    .line 148
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->registerForQtiRadioServiceNotification()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 40
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 40
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isQtiRadioServiceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 40
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->initQtiRadio()V

    return-void
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 152
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private declared-synchronized initQtiRadio()V
    .locals 4

    monitor-enter p0

    .line 120
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 121
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "QTIRILJ"

    const-string v1, "initQtiRadio: mQtiRadio is null. Return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    const-string v0, "QTIRILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initQtiRadio: mQtiRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 126
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 128
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;

    .line 129
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;

    .line 130
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;

    invoke-interface {v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->setCallback(Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "QTIRILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQtiRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    throw v0
.end method

.method private isQtiRadioServiceConnected()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerForQtiRadioServiceNotification()V
    .locals 4

    .line 103
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v1, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 104
    invoke-interface {v0, v1, v2, v3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v0

    .line 106
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 107
    const-string v1, "QTIRILJ"

    const-string v2, "Failed to register for service start notifications"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "ret":Z
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "QTIRILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register for service start notifications. Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resetServiceAndRequestList()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetProxyAndRequestList()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 65
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;

    .line 66
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRadioIndication;

    .line 67
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 68
    return-void
.end method


# virtual methods
.method public getAtr(Landroid/os/Message;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;

    .line 157
    const-string v0, "QTIRILJ"

    const-string v1, "getAtr"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, p1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->obtainRequestSerial(ILandroid/os/Message;Landroid/os/WorkSource;)I

    move-result v0

    .line 161
    .local v0, "serial":I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->getAtr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "QTIRILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAtr: Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 175
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "ret"    # Ljava/lang/Object;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "str"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 180
    return-void
.end method
