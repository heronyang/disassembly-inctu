.class Ledu/nctu/e3/AddReplyActivity$AddReplyTask;
.super Landroid/os/AsyncTask;
.source "AddReplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddReplyTask"
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
    .line 141
    iput-object p1, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
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
    .line 149
    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddReplyActivity;->topic:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, topicStr:Ljava/lang/String;
    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddReplyActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, contentStr:Ljava/lang/String;
    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v3, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v3, v3, Ledu/nctu/e3/AddReplyActivity;->handler:Landroid/os/Handler;

    const-string v4, "AddDiscussReply"

    const/16 v5, 0x10

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "loginTicket"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddReplyActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "newTopicReplyId"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddReplyActivity;->newTopicReplyId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "topicId"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddReplyActivity;->topicId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "replyId"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddReplyActivity;->replyId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "accountId"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddReplyActivity;->accountId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "subject"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    aput-object v1, v5, v6

    const/16 v6, 0xc

    const-string v7, "content"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "\n"

    const-string v8, "<br>"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "smiley"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "1"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->onPostExecute(Ljava/util/HashMap;)V

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
    .line 155
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;

    iget-object v1, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    invoke-direct {v0, v1}, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;-><init>(Ledu/nctu/e3/AddReplyActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddReplyActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 145
    return-void
.end method
