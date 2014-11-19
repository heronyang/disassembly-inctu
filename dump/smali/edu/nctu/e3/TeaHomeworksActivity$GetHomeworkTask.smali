.class Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;
.super Landroid/os/AsyncTask;
.source "TeaHomeworksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TeaHomeworksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHomeworkTask"
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
.field final synthetic this$0:Ledu/nctu/e3/TeaHomeworksActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TeaHomeworksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
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
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 252
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetTeaHomeworkList"

    const-string v4, "HomeworkData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "listType"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "1"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->onhws:Ljava/util/ArrayList;

    .line 253
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetTeaHomeworkList"

    const-string v4, "HomeworkData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "listType"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "2"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->waithws:Ljava/util/ArrayList;

    .line 254
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetTeaHomeworkList"

    const-string v4, "HomeworkData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "listType"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "3"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->finishhws:Ljava/util/ArrayList;

    .line 255
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetTeaHomeworkList"

    const-string v4, "HomeworkData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "listType"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "4"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->noticehws:Ljava/util/ArrayList;

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 264
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    new-instance v1, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/TeaHomeworksActivity;->onhws:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/TeaHomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->onhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    .line 265
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->onhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->onhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->onhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->onhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 267
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    new-instance v1, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/TeaHomeworksActivity;->waithws:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/TeaHomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->waithwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    .line 268
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->waithwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->waithwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->waithwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->waithwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 270
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    new-instance v1, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/TeaHomeworksActivity;->finishhws:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/TeaHomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->finishhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    .line 271
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->finishhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->finishhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->finishhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->finishhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 273
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    new-instance v1, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/TeaHomeworksActivity;->noticehws:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/TeaHomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworksActivity;->noticehwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    .line 274
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->noticehwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->noticehwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->noticehwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworksActivity;->noticehwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TeaHomeworksActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 277
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TeaHomeworksActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 247
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 261
    return-void
.end method
