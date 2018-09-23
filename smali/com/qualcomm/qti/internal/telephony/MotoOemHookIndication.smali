.class public Lcom/qualcomm/qti/internal/telephony/MotoOemHookIndication;
.super Lcom/qualcomm/qcrilhook/IMotoOemHookIndication$Stub;
.source "MotoOemHookIndication.java"


# instance fields
.field private mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 29
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/IMotoOemHookIndication$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    .line 31
    return-void
.end method


# virtual methods
.method public onOemHookIndication([B)V
    .locals 1
    .param p1, "response"    # [B

    .line 38
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/MotoOemHookIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/OemHookIndicationProcess;->processUnsolOemhookIndication(Lcom/android/internal/telephony/RIL;[B)V

    .line 39
    return-void
.end method
