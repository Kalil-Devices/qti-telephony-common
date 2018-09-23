.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
.super Lcom/android/internal/telephony/SubscriptionController;
.source "QtiSubscriptionController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final PROVISIONED:I = 0x1


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    .line 91
    const-string v0, " init by Context"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    .locals 2

    .line 82
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "QtiSubscriptionController"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 71
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "QtiSubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    monitor-exit v0

    return-object v1

    .line 78
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

    .line 390
    const-string v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 398
    const-string v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 394
    const-string v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method


# virtual methods
.method public getUiccProvisionStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 330
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 331
    .local v0, "extTelService":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v1

    .line 333
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    .line 332
    return v1

    .line 335
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "prompt":Z
    const/4 v1, 0x0

    move v2, v1

    .line 368
    .local v2, "value":I
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 372
    goto :goto_0

    .line 370
    :catch_0
    move-exception v3

    .line 371
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    .line 373
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 376
    return v0
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 382
    const-string v0, "setSMSPromptEnabled"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 383
    move v0, p1

    .line 384
    .local v0, "value":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSMSPromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method protected shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 7
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 233
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 236
    return v0

    .line 238
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 241
    return v2

    .line 243
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 244
    .local v3, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 245
    .local v4, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 246
    if-ne v4, p2, :cond_2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 248
    return v2

    .line 250
    .end local v3    # "record":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "id":I
    :cond_2
    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSlotIndex(I)I

    move-result v1

    .line 252
    .local v1, "slotId":I
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[shouldDefaultBeCleared] return false subId is provisioned, subId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 254
    return v2

    .line 256
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 257
    return v0
.end method

.method declared-synchronized updateUserPreferences()V
    .locals 0

    monitor-enter p0

    .line 325
    monitor-exit p0

    return-void
.end method
