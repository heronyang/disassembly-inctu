.class Ledu/nctu/e3/ForumListActivity$GetForumListTask;
.super Landroid/os/AsyncTask;
.source "ForumListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/ForumListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetForumListTask"
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
.field final synthetic this$0:Ledu/nctu/e3/ForumListActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ForumListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
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
    .line 102
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v1, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v1, v1, Ledu/nctu/e3/ForumListActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetForumList"

    const-string v3, "DiscussForumData"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "loginTicket"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v6, v6, Ledu/nctu/e3/ForumListActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "courseId"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v6, v6, Ledu/nctu/e3/ForumListActivity;->courseId:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 110
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    new-instance v1, Ledu/nctu/e3/ForumListActivity$ForumAdapter;

    iget-object v2, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    invoke-direct {v1, v2, p1}, Ledu/nctu/e3/ForumListActivity$ForumAdapter;-><init>(Ledu/nctu/e3/ForumListActivity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Ledu/nctu/e3/ForumListActivity;->adapter:Ledu/nctu/e3/ForumListActivity$ForumAdapter;

    .line 111
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v0, v0, Ledu/nctu/e3/ForumListActivity;->forumList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v1, v1, Ledu/nctu/e3/ForumListActivity;->adapter:Ledu/nctu/e3/ForumListActivity$ForumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v0, v0, Ledu/nctu/e3/ForumListActivity;->forumList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v1, v1, Ledu/nctu/e3/ForumListActivity;->adapter:Ledu/nctu/e3/ForumListActivity$ForumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/ForumListActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 114
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->this$0:Ledu/nctu/e3/ForumListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/ForumListActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 98
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 107
    return-void
.end method
