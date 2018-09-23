.class Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;
.super Ljava/lang/Object;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccParams"
.end annotation


# instance fields
.field private mParamIccid:Ljava/lang/String;

.field private mParamPhoneId:I

.field private mParamProvStatus:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;ILcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)V
    .locals 0
    .param p2, "iccid"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "provStatus"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 612
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;->mParamIccid:Ljava/lang/String;

    .line 614
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;->mParamPhoneId:I

    .line 615
    iput-object p4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;->mParamProvStatus:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 616
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;

    .line 608
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;->mParamPhoneId:I

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;

    .line 608
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;->mParamProvStatus:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;

    .line 608
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$IccParams;->mParamIccid:Ljava/lang/String;

    return-object v0
.end method
