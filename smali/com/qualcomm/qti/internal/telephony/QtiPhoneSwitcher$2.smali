.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;
.super Ljava/lang/Object;
.source "QtiPhoneSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onAllowDataResponse(ILandroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

.field final synthetic val$curPhoneId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 358
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$400(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 362
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 363
    .local v1, "ddsPhoneId":I
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    if-ne v1, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v3, "Running retry connect/allow_data"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$600(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resendDataAllowed(I)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$700(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v3, "Wait for call end indication"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$800(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 371
    return-void

    .line 373
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$900(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    .line 374
    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$300(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)I

    move-result v2

    if-lez v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running retry connect/allow_data for phone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$1000(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resendDataAllowed(I)V

    .line 377
    return-void

    .line 380
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v3, "Dds sub changed"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$1100(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$curPhoneId:I

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$1200(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V

    .line 383
    :goto_0
    return-void
.end method
