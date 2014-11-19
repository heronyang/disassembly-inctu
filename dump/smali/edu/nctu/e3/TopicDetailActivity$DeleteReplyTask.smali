.class Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;
.super Landroid/os/AsyncTask;
.source "TopicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteReplyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/TopicDetailActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 344
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicDetailActivity;->handler:Landroid/os/Handler;

    const-string v2, "DeleteDiscussReply"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "loginTicket"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v5, v5, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "replyId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aget-object v5, p1, v6

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 348
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    const v2, 0x7f0500a7

    invoke-virtual {v1, v2}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 353
    :goto_0
    new-instance v0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;-><init>(Ledu/nctu/e3/TopicDetailActivity;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->accountId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->topicId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->replyId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "true"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    const v2, 0x7f0500a8

    invoke-virtual {v1, v2}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
