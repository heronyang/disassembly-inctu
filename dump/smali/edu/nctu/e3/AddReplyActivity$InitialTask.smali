.class Ledu/nctu/e3/AddReplyActivity$InitialTask;
.super Landroid/os/AsyncTask;
.source "AddReplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialTask"
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
.field final synthetic this$0:Ledu/nctu/e3/AddReplyActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/AddReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddReplyActivity$InitialTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
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
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v1, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddReplyActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetTopicInfo"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddReplyActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "accountId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddReplyActivity;->accountId:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string v5, "topicId"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    iget-object v6, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v6, v6, Ledu/nctu/e3/AddReplyActivity;->topicId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "replyId"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v6, v6, Ledu/nctu/e3/AddReplyActivity;->replyId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "isTea"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "true"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/AddReplyActivity;->topicInfo:Ljava/util/HashMap;

    .line 167
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v1, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddReplyActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetPersonalData"

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddReplyActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "accountId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddReplyActivity;->accountId:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-static {v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/AddReplyActivity;->replier:Ljava/util/HashMap;

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddReplyActivity$InitialTask;->onPostExecute(Ljava/util/HashMap;)V

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
    .line 176
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v1, v0, Ledu/nctu/e3/AddReplyActivity;->respondent:Landroid/widget/TextView;

    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v0, v0, Ledu/nctu/e3/AddReplyActivity;->replier:Ljava/util/HashMap;

    const-string v2, "DisplayName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v1, v0, Ledu/nctu/e3/AddReplyActivity;->topic:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Re:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v0, v0, Ledu/nctu/e3/AddReplyActivity;->topicInfo:Ljava/util/HashMap;

    const-string v3, "Caption"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddReplyActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 179
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$InitialTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddReplyActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 162
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddReplyActivity$InitialTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 173
    return-void
.end method
