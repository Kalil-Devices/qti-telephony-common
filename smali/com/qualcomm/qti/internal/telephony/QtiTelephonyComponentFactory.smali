.class public Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
.super Lcom/android/internal/telephony/TelephonyComponentFactory;
.source "QtiTelephonyComponentFactory.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "QtiTelephonyComponentFactory"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCdmaSubscriptionSourceManagerInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .locals 2

    .line 139
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getIDeviceIdleController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-super {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v0

    return-object v0
.end method

.method public initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 154
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initSubscriptionController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    return-object v0
.end method

.method public makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .line 93
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeEriManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;

    move-result-object v0

    return-object v0
.end method

.method public makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 168
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, " makeExtTelephonyClasses "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 170
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    .line 171
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    .line 176
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 179
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error creating ExtTelephonyServiceImpl"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-void
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 46
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeGsmCdmaCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 81
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccPhoneBookInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 87
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccSmsInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 2
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 125
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeImsPhoneCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "displayAddr"    # Ljava/lang/String;
    .param p8, "referenceNumber"    # I
    .param p9, "sequenceNumber"    # I
    .param p10, "messageCount"    # I
    .param p11, "is3gpp2WapPdu"    # Z
    .param p12, "msgBody"    # Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super/range {p0 .. p12}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddr"    # Ljava/lang/String;
    .param p9, "msgBody"    # Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super/range {p0 .. p9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 147
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makePhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v0
.end method

.method public makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 11
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sc"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 187
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiPhoneSwitcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 195
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeQtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 52
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsStorageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;

    move-result-object v0

    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsUsageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 161
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSubscriptionInfoUpdater"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->init(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v0

    return-object v0
.end method

.method public makeTelephonyUtils(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/util/TelephonyUtils;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 202
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeMotoTelephonyUtils"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {p1}, Lcom/motorola/android/internal/telehony/util/MotoTelephonyUtils;->init(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/util/TelephonyUtils;

    move-result-object v0

    return-object v0
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .locals 2
    .param p1, "pdu"    # [B

    .line 99
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeWspTypeDecoder"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v0

    return-object v0
.end method
