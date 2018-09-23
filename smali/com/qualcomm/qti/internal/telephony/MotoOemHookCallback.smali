.class public Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;
.super Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;
.source "MotoOemHookCallback.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MotoOemHookCallback"


# instance fields
.field motoOemCB:Lorg/codeaurora/internal/IMotoOemCB;


# direct methods
.method public constructor <init>(Lorg/codeaurora/internal/IMotoOemCB;)V
    .locals 1
    .param p1, "callback"    # Lorg/codeaurora/internal/IMotoOemCB;

    .line 31
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;->motoOemCB:Lorg/codeaurora/internal/IMotoOemCB;

    .line 32
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;->motoOemCB:Lorg/codeaurora/internal/IMotoOemCB;

    .line 33
    return-void
.end method


# virtual methods
.method public onOemHookException(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 48
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;->motoOemCB:Lorg/codeaurora/internal/IMotoOemCB;

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;->motoOemCB:Lorg/codeaurora/internal/IMotoOemCB;

    invoke-interface {v0, p1}, Lorg/codeaurora/internal/IMotoOemCB;->onOemHookException(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MotoOemHookCallback"

    const-string v2, "got RemoteException when call motoOemCB.onOemHookResponse()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onOemHookResponse([BI)V
    .locals 3
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I

    .line 37
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;->motoOemCB:Lorg/codeaurora/internal/IMotoOemCB;

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookCallback;->motoOemCB:Lorg/codeaurora/internal/IMotoOemCB;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/internal/IMotoOemCB;->onOemHookResponse([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MotoOemHookCallback"

    const-string v2, "got RemoteException when call motoOemCB.onOemHookResponse()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
