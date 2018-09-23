.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
.super Ljava/lang/Object;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiccProvisionStatus"
.end annotation


# static fields
.field public static final CARD_NOT_PRESENT:I = -0x2

.field public static final INVALID_STATE:I = -0x1

.field public static final NOT_PROVISIONED:I = 0x0

.field public static final PROVISIONED:I = 0x1


# instance fields
.field private currentState:I

.field private userPreference:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    .line 109
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->currentState:I

    .line 110
    return-void
.end method


# virtual methods
.method equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z
    .locals 3
    .param p1, "provisionStatus"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 113
    const/4 v0, 0x1

    .line 115
    .local v0, "result":Z
    invoke-virtual {p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 119
    :cond_1
    return v0
.end method

.method getCurrentState()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->currentState:I

    return v0
.end method

.method getUserPreference()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    return v0
.end method

.method setCurrentState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 135
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->currentState:I

    .line 136
    return-void
.end method

.method setUserPreference(I)V
    .locals 0
    .param p1, "pref"    # I

    .line 127
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Current pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->currentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
