.class Ledu/nctu/e3/TopicDetailActivity$GetReplyList;
.super Landroid/os/AsyncTask;
.source "TopicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetReplyList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/TopicDetailActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 123
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/TopicDetailActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetReplyList"

    const-string v5, "DiscussReplyData"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "loginTicket"

    aput-object v7, v6, v9

    iget-object v7, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v7, v7, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v10

    const-string v7, "accountId"

    aput-object v7, v6, v11

    iget-object v7, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v7, v7, Ledu/nctu/e3/TopicDetailActivity;->accountId:Ljava/lang/String;

    aput-object v7, v6, v12

    const-string v7, "topicId"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    iget-object v8, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v8, v8, Ledu/nctu/e3/TopicDetailActivity;->topicId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "replyId"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v8, v8, Ledu/nctu/e3/TopicDetailActivity;->replyId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "isTea"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "true"

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/TopicDetailActivity;->replys:Ljava/util/ArrayList;

    .line 124
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ledu/nctu/e3/TopicDetailActivity;->replysFiles:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicDetailActivity;->replys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 128
    const/4 v1, 0x0

    return-object v1

    .line 126
    :cond_0
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v2, v1, Ledu/nctu/e3/TopicDetailActivity;->replysFiles:Ljava/util/ArrayList;

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v4, v1, Ledu/nctu/e3/TopicDetailActivity;->handler:Landroid/os/Handler;

    const-string v5, "GetAttachFileList"

    const-string v6, "AttachFileInfoData"

    const/16 v1, 0x8

    new-array v7, v1, [Ljava/lang/String;

    const-string v1, "loginTicket"

    aput-object v1, v7, v9

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v1, v7, v10

    const-string v1, "resId"

    aput-object v1, v7, v11

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicDetailActivity;->replys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v8, "ReplyId"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v7, v12

    const-string v1, "metaType"

    aput-object v1, v7, v13

    const/4 v1, 0x5

    const-string v8, "31"

    aput-object v8, v7, v1

    const/4 v1, 0x6

    const-string v8, "courseId"

    aput-object v8, v7, v1

    const/4 v1, 0x7

    iget-object v8, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v8, v8, Ledu/nctu/e3/TopicDetailActivity;->courseId:Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;-><init>(Ledu/nctu/e3/TopicDetailActivity;)V

    .line 137
    .local v0, adapter:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicDetailActivity;->replyList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ledu/nctu/e3/TopicDetailActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 139
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicDetailActivity$GetReplyList;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 133
    return-void
.end method
