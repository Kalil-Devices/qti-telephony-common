.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPLMNListResponse"
.end annotation


# instance fields
.field public plmnList:[B

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .line 2314
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    .line 2312
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    .line 2315
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->status:I

    .line 2317
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2319
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    .line 2320
    .local v1, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 2322
    .local v2, "length":I
    packed-switch v1, :pswitch_data_0

    .line 2350
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 2324
    :pswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 2329
    .local v3, "numOfPlmn":B
    const/16 v4, 0x20

    .line 2330
    .local v4, "space":B
    const/4 v5, 0x6

    mul-int/2addr v5, v3

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    .line 2331
    const/4 v5, 0x0

    .line 2332
    .local v5, "index":I
    move v6, v5

    move v5, v0

    .local v5, "i":I
    .local v6, "index":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 2333
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 2334
    .local v7, "mccLen":B
    iget-object v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-virtual {p3, v8, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2335
    add-int/2addr v6, v7

    .line 2336
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 2337
    .local v8, "mncLen":B
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-virtual {p3, v9, v6, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2338
    add-int/2addr v6, v8

    .line 2339
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 2340
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    add-int/lit8 v10, v6, 0x1

    .local v10, "index":I
    aput-byte v4, v9, v6

    .line 2332
    .end local v6    # "index":I
    .end local v7    # "mccLen":B
    .end local v8    # "mncLen":B
    move v6, v10

    .end local v10    # "index":I
    .restart local v6    # "index":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2343
    .end local v5    # "i":I
    :cond_1
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plmnList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-static {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    goto :goto_3

    .line 2346
    .end local v3    # "numOfPlmn":B
    .end local v4    # "space":B
    .end local v6    # "index":I
    :pswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    .line 2347
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "traceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    goto :goto_3

    .line 2350
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetPLMNListResponse: Unexpected Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "type":I
    .end local v2    # "length":I
    goto :goto_3

    .line 2353
    :catch_0
    move-exception v1

    .line 2354
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid format of byte buffer received in GetPLMNListResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    goto/16 :goto_0

    .line 2359
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
