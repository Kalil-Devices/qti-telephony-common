.class Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$2;
.super Landroid/os/Handler;
.source "ExtTelephonyServiceImpl.java"


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

    .line 319
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$2;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$2;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$300(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    .line 327
    :goto_0
    return-void
.end method
