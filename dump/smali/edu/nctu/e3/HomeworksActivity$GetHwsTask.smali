.class Ledu/nctu/e3/HomeworksActivity$GetHwsTask;
.super Landroid/os/AsyncTask;
.source "HomeworksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/HomeworksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHwsTask"
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
.field final synthetic this$0:Ledu/nctu/e3/HomeworksActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/HomeworksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 347
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/HomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetStuHomeworkList"

    const-string v4, "HomeworkData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "accountId"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v7, v7, Ledu/nctu/e3/HomeworksActivity;->accountId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "listType"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "1"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->waithws:Ljava/util/ArrayList;

    .line 348
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/HomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetStuHomeworkList"

    const-string v4, "HomeworkData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "accountId"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v7, v7, Ledu/nctu/e3/HomeworksActivity;->accountId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "listType"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "2"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->peerhws:Ljava/util/ArrayList;

    .line 349
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/HomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetStuHomeworkList"

    const-string v4, "HomeworkData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "accountId"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v7, v7, Ledu/nctu/e3/HomeworksActivity;->accountId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "listType"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "3"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->overduehws:Ljava/util/ArrayList;

    .line 350
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/HomeworksActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetStuHomeworkList"

    const-string v4, "HomeworkData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworksActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "accountId"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v7, v7, Ledu/nctu/e3/HomeworksActivity;->accountId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "listType"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "4"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->okhws:Ljava/util/ArrayList;

    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 7
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
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 359
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    new-instance v1, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/HomeworksActivity;->waithws:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v5}, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/HomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->waithwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    .line 360
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->waithwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->waithwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->waithwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->waithwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 362
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    new-instance v1, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/HomeworksActivity;->peerhws:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v6}, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/HomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->peerhwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    .line 363
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->peerhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->peerhwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 364
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->peerhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->peerhwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    new-instance v1, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/HomeworksActivity;->overduehws:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/HomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->overduehwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    .line 366
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->overduehwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->overduehwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 367
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->overduehwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->overduehwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    new-instance v1, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    iget-object v2, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v3, v3, Ledu/nctu/e3/HomeworksActivity;->okhws:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;-><init>(Ledu/nctu/e3/HomeworksActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/HomeworksActivity;->okhwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    .line 369
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->okhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->okhwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->okhwList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworksActivity;->okhwAdapter:Ledu/nctu/e3/HomeworksActivity$HomeworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 371
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 372
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 373
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/HomeworksActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 374
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->this$0:Ledu/nctu/e3/HomeworksActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/HomeworksActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 342
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/HomeworksActivity$GetHwsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 356
    return-void
.end method
