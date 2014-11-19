.class Ledu/nctu/e3/TopicListActivity$GetTopicListTask;
.super Landroid/os/AsyncTask;
.source "TopicListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetTopicListTask"
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
.field final synthetic this$0:Ledu/nctu/e3/TopicListActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
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
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicListActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetTopicList"

    const-string v3, "DiscussTopicData"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v6

    aget-object v5, p1, v6

    aput-object v5, v4, v7

    const-string v5, "courseId"

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aget-object v6, p1, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "forumId"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aget-object v6, p1, v8

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 127
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    new-instance v1, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    invoke-direct {v1, v2, p1}, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;-><init>(Ledu/nctu/e3/TopicListActivity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Ledu/nctu/e3/TopicListActivity;->adapter:Ledu/nctu/e3/TopicListActivity$TopicListAdapter;

    .line 128
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v0, v0, Ledu/nctu/e3/TopicListActivity;->topicList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicListActivity;->adapter:Ledu/nctu/e3/TopicListActivity$TopicListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v0, v0, Ledu/nctu/e3/TopicListActivity;->topicList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v1, v1, Ledu/nctu/e3/TopicListActivity;->adapter:Ledu/nctu/e3/TopicListActivity$TopicListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicListActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 131
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->this$0:Ledu/nctu/e3/TopicListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicListActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 116
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 124
    return-void
.end method
