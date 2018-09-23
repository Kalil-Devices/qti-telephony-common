.class Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;
.super Ljava/lang/Object;
.source "ExtTelephonyServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcrilMsgTunnelConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p2, "x1"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;

    .line 340
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 343
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {p2}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$402(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 344
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$400(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const-string v1, "QcrilMsgTunnelService Connect Failed (onServiceConnected)"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    goto :goto_2

    .line 347
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$500()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 349
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$600(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {p2, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 350
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$400(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$700(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)[Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v2, v3, v1}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->setOnUnsolOemHookRaw(Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_1

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setOnUnsolOemHookRaw i ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 347
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$802(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Z)Z

    .line 357
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 361
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const-string v1, "The connection to the service got disconnected unexpectedly!"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$402(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 363
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$QcrilMsgTunnelConnection;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$802(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Z)Z

    .line 364
    return-void
.end method
