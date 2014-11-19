.class Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;
.super Landroid/os/AsyncTask;
.source "TopicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetTopicInfoTask"
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
    .line 142
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
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
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/TopicDetailActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetAttachFileList"

    const-string v4, "AttachFileInfoData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v6, v6, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "resId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v6, v6, Ledu/nctu/e3/TopicDetailActivity;->topicId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "metaType"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "30"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "courseId"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v7, v7, Ledu/nctu/e3/TopicDetailActivity;->courseId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TopicDetailActivity;->topicFiles:Ljava/util/ArrayList;

    .line 151
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/TopicDetailActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetTopicInfo"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v8

    iget-object v5, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v5, v5, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v9

    const-string v5, "accountId"

    aput-object v5, v4, v10

    iget-object v5, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v5, v5, Ledu/nctu/e3/TopicDetailActivity;->accountId:Ljava/lang/String;

    aput-object v5, v4, v11

    const-string v5, "topicId"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    iget-object v6, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v6, v6, Ledu/nctu/e3/TopicDetailActivity;->topicId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "replyId"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v6, v6, Ledu/nctu/e3/TopicDetailActivity;->replyId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "isTea"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "true"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TopicDetailActivity;->topicInfo:Ljava/util/HashMap;

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->onPostExecute(Ljava/util/HashMap;)V

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
    .line 160
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;-><init>(Ledu/nctu/e3/TopicDetailActivity;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->accountId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->topicId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->replyId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "true"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicDetailActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 146
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 157
    return-void
.end method
