.class Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;
.super Ljava/lang/Object;
.source "ExtTelephonyServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 309
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const-string v1, "QcrilMsgService Died"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$200(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 314
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$200(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 313
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    return-void
.end method
