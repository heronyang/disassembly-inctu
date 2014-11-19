.class Ledu/nctu/e3/NewsActivity$GetNewsTask;
.super Landroid/os/AsyncTask;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/NewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetNewsTask"
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
.field final synthetic this$0:Ledu/nctu/e3/NewsActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/NewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/NewsActivity$GetNewsTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
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
    .line 58
    iget-object v0, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v1, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v1, v1, Ledu/nctu/e3/NewsActivity;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Ledu/nctu/e3/helpers/HttpHelper;->getE3News(Landroid/content/Context;Landroid/os/Handler;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/NewsActivity$GetNewsTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 62
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    iput-object p1, v1, Ledu/nctu/e3/NewsActivity;->news:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ledu/nctu/e3/NewsActivity$NewsAdapter;

    iget-object v1, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    invoke-direct {v0, v1}, Ledu/nctu/e3/NewsActivity$NewsAdapter;-><init>(Ledu/nctu/e3/NewsActivity;)V

    .line 64
    .local v0, adapter:Ledu/nctu/e3/NewsActivity$NewsAdapter;
    iget-object v1, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v1, v1, Ledu/nctu/e3/NewsActivity;->newsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v1, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v1, v1, Ledu/nctu/e3/NewsActivity;->newsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v1, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ledu/nctu/e3/NewsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 67
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Ledu/nctu/e3/NewsActivity$GetNewsTask;->this$0:Ledu/nctu/e3/NewsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/NewsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 53
    return-void
.end method
