.class Ledu/nctu/e3/CourseListActivity$SetCourseListTask;
.super Landroid/os/AsyncTask;
.source "CourseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/CourseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetCourseListTask"
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
.field final synthetic this$0:Ledu/nctu/e3/CourseListActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/CourseListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 209
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v2, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseListActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetCourseList"

    const-string v4, "CourseData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "accountId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->accountId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "role"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "stu"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/CourseListActivity;->stuCourses:Ljava/util/ArrayList;

    .line 210
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v2, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseListActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetCourseList"

    const-string v4, "CourseData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "accountId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->accountId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "role"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "tea"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/CourseListActivity;->teaCourses:Ljava/util/ArrayList;

    .line 211
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v2, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseListActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetCourseList"

    const-string v4, "CourseData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "accountId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->accountId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "role"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "ta"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/CourseListActivity;->taCourses:Ljava/util/ArrayList;

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 220
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    new-instance v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    iget-object v2, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v3, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v3, v3, Ledu/nctu/e3/CourseListActivity;->stuCourses:Ljava/util/ArrayList;

    const-string v4, "stu"

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/CourseListActivity$CourseAdapter;-><init>(Ledu/nctu/e3/CourseListActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, v0, Ledu/nctu/e3/CourseListActivity;->stuCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    .line 221
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->stuCourseList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseListActivity;->stuCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->stuCourseList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseListActivity;->stuCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    new-instance v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    iget-object v2, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v3, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v3, v3, Ledu/nctu/e3/CourseListActivity;->teaCourses:Ljava/util/ArrayList;

    const-string v4, "tea"

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/CourseListActivity$CourseAdapter;-><init>(Ledu/nctu/e3/CourseListActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, v0, Ledu/nctu/e3/CourseListActivity;->teaCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    .line 224
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->teaCourseList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseListActivity;->teaCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->teaCourseList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseListActivity;->teaCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    new-instance v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    iget-object v2, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v3, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v3, v3, Ledu/nctu/e3/CourseListActivity;->taCourses:Ljava/util/ArrayList;

    const-string v4, "ta"

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/CourseListActivity$CourseAdapter;-><init>(Ledu/nctu/e3/CourseListActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, v0, Ledu/nctu/e3/CourseListActivity;->taCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    .line 227
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->taCourseList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseListActivity;->taCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->taCourseList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseListActivity;->taCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/CourseListActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 230
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->this$0:Ledu/nctu/e3/CourseListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/CourseListActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 205
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 217
    return-void
.end method
