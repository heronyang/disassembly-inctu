.class Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;
.super Landroid/os/AsyncTask;
.source "TeaHomeworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TeaHomeworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHomeworkDataTask"
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
.field final synthetic this$0:Ledu/nctu/e3/TeaHomeworkActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TeaHomeworkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$3(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;)Ledu/nctu/e3/TeaHomeworkActivity;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 212
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetHomeworkInfo"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v8

    iget-object v5, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v5, v5, Ledu/nctu/e3/TeaHomeworkActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v9

    const-string v5, "accountId"

    aput-object v5, v4, v10

    iget-object v5, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v5, v5, Ledu/nctu/e3/TeaHomeworkActivity;->accountId:Ljava/lang/String;

    aput-object v5, v4, v11

    const-string v5, "hwkId"

    aput-object v5, v4, v12

    const/4 v5, 0x5

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworkActivity;->hwkId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    .line 213
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetHwkSubmitList"

    const-string v4, "SubmitData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworkActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworkActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "hwkId"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v7, v7, Ledu/nctu/e3/TeaHomeworkActivity;->hwkId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "listType"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "0"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->nosubmitStudents:Ljava/util/ArrayList;

    .line 214
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetHwkSubmitList"

    const-string v4, "SubmitData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworkActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v6, v6, Ledu/nctu/e3/TeaHomeworkActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "hwkId"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v7, v7, Ledu/nctu/e3/TeaHomeworkActivity;->hwkId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "listType"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "1"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->submitStudents:Ljava/util/ArrayList;

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 15
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
    .line 224
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TeaHomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 225
    .local v9, layout:Landroid/view/View;
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090042

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->name:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->name:Landroid/widget/TextView;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v2, "DisplayName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090015

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->unit:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->unit:Landroid/widget/TextView;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v2, "UnitName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090059

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->description:Landroid/webkit/WebView;

    .line 230
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->description:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v3, "Content"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090043

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->deadline:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->deadline:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v3, "BeginDate"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "~"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v3, "EndDate"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090044

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->way:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->way:Landroid/widget/TextView;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v2, "SubmitType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const v0, 0x7f09005c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 250
    .local v12, studentList:Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->submitStudents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 271
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TeaHomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 272
    .local v10, layout2:Landroid/view/View;
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090042

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->name:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->name:Landroid/widget/TextView;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v2, "DisplayName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090015

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->unit:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->unit:Landroid/widget/TextView;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v2, "UnitName"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090059

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->description:Landroid/webkit/WebView;

    .line 277
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->description:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v3, "Content"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090043

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->deadline:Landroid/widget/TextView;

    .line 279
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->deadline:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v3, "BeginDate"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "~"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v3, "EndDate"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v0, 0x7f090044

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ledu/nctu/e3/TeaHomeworkActivity;->way:Landroid/widget/TextView;

    .line 281
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v1, v0, Ledu/nctu/e3/TeaHomeworkActivity;->way:Landroid/widget/TextView;

    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->homeworkInfo:Ljava/util/HashMap;

    const-string v2, "SubmitType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const v0, 0x7f09005c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 287
    .local v13, studentList2:Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->nosubmitStudents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 293
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TeaHomeworkActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 294
    return-void

    .line 251
    .end local v10           #layout2:Landroid/view/View;
    .end local v13           #studentList2:Landroid/widget/LinearLayout;
    :cond_0
    move v7, v6

    .line 252
    .local v7, index:I
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-virtual {v0}, Ledu/nctu/e3/TeaHomeworkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 253
    .local v8, item:Landroid/widget/LinearLayout;
    const v0, 0x7f090042

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 254
    .local v11, name:Landroid/widget/TextView;
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->submitStudents:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Submiter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const v0, 0x7f090076

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 256
    .local v14, time:Landroid/widget/TextView;
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->submitStudents:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "SubmitTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 257
    new-instance v0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;

    invoke-direct {v0, p0, v7}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;-><init>(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 288
    .end local v7           #index:I
    .end local v8           #item:Landroid/widget/LinearLayout;
    .end local v11           #name:Landroid/widget/TextView;
    .end local v14           #time:Landroid/widget/TextView;
    .restart local v10       #layout2:Landroid/view/View;
    .restart local v13       #studentList2:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-virtual {v0}, Ledu/nctu/e3/TeaHomeworkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 289
    .restart local v8       #item:Landroid/widget/LinearLayout;
    const v0, 0x7f090042

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 290
    .restart local v11       #name:Landroid/widget/TextView;
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworkActivity;->nosubmitStudents:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Submiter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TeaHomeworkActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 207
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 220
    return-void
.end method
