.class Ledu/nctu/e3/AddTopicActivity$AddTopicTask;
.super Landroid/os/AsyncTask;
.source "AddTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddTopicTask"
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
.field final synthetic this$0:Ledu/nctu/e3/AddTopicActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/AddTopicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
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
    .line 190
    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddTopicActivity;->topic:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, topicStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddTopicActivity;->beginDate:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, beginDateStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddTopicActivity;->endDate:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, endDateStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddTopicActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, contentStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v5, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddTopicActivity;->handler:Landroid/os/Handler;

    const-string v6, "AddDiscussTopic"

    const/16 v7, 0x14

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "loginTicket"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddTopicActivity;->loginTicket:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 195
    const-string v9, "newTopicId"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddTopicActivity;->newTopicId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 196
    const-string v9, "courseId"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddTopicActivity;->courseId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    .line 197
    const-string v9, "accountId"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddTopicActivity;->accountId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x8

    .line 198
    const-string v9, "unitId"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget-object v9, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddTopicActivity;->unitId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xa

    .line 199
    const-string v9, "forumId"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget-object v9, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddTopicActivity;->forumId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xc

    .line 200
    const-string v9, "beginDate"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    aput-object v0, v7, v8

    const/16 v8, 0xe

    .line 201
    const-string v9, "endDate"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    aput-object v2, v7, v8

    const/16 v8, 0x10

    .line 202
    const-string v9, "topicName"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    aput-object v3, v7, v8

    const/16 v8, 0x12

    .line 203
    const-string v9, "content"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 194
    invoke-static {v4, v5, v6, v7}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->onPostExecute(Ljava/util/HashMap;)V

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
    .line 207
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ledu/nctu/e3/AddTopicActivity$AttachFileTask;

    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    invoke-direct {v0, v1}, Ledu/nctu/e3/AddTopicActivity$AttachFileTask;-><init>(Ledu/nctu/e3/AddTopicActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddTopicActivity$AttachFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddTopicActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 186
    return-void
.end method
