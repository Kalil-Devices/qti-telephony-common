.class public interface abstract Lcom/qualcomm/qcrilhook/IMotoOemHookIndication;
.super Ljava/lang/Object;
.source "IMotoOemHookIndication.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/IMotoOemHookIndication$Stub;
    }
.end annotation


# virtual methods
.method public abstract onOemHookIndication([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
