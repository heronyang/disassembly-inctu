.class Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;
.super Landroid/os/AsyncTask;
.source "HomeworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/HomeworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHwInfoTask"
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
.field attachfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field handedupfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ledu/nctu/e3/HomeworkActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/HomeworkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

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

    .line 180
    iget-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetAttachFileList"

    const-string v3, "AttachFileInfoData"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v5, v5, Ledu/nctu/e3/HomeworkActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "resId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v5, v5, Ledu/nctu/e3/HomeworkActivity;->hwkId:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string v5, "metaType"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "20"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "courseId"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworkActivity;->courseId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->attachfiles:Ljava/util/ArrayList;

    .line 181
    iget-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworkActivity;->hwkSubmitId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetAttachFileList"

    const-string v3, "AttachFileInfoData"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v5, v5, Ledu/nctu/e3/HomeworkActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "resId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v5, v5, Ledu/nctu/e3/HomeworkActivity;->hwkSubmitId:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string v5, "metaType"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "21"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "courseId"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v6, v6, Ledu/nctu/e3/HomeworkActivity;->courseId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->handedupfiles:Ljava/util/ArrayList;

    .line 186
    :goto_0
    iget-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetHomeworkInfo"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "loginTicket"

    aput-object v4, v3, v7

    aget-object v4, p1, v7

    aput-object v4, v3, v8

    const-string v4, "accountId"

    aput-object v4, v3, v9

    aget-object v4, p1, v8

    aput-object v4, v3, v10

    const-string v4, "hwkId"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    aget-object v5, p1, v9

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->handedupfiles:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 5
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
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 194
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v2, v1, Ledu/nctu/e3/HomeworkActivity;->name:Landroid/widget/TextView;

    const-string v1, "DisplayName"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "DisplayName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v2, v1, Ledu/nctu/e3/HomeworkActivity;->unit:Landroid/widget/TextView;

    const-string v1, "UnitName"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v2, v1, Ledu/nctu/e3/HomeworkActivity;->deadline:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "BeginDate"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "~"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "EndDate"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v2, v1, Ledu/nctu/e3/HomeworkActivity;->way:Landroid/widget/TextView;

    const-string v1, "SubmitType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v2, v1, Ledu/nctu/e3/HomeworkActivity;->content:Landroid/widget/TextView;

    const-string v1, "Content"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->attachfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 201
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->attachFileList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 202
    new-instance v0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v2, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->attachfiles:Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;-><init>(Ledu/nctu/e3/HomeworkActivity;Ljava/util/ArrayList;I)V

    .line 203
    .local v0, adapter:Ledu/nctu/e3/HomeworkActivity$FilesAdapter;
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->attachFileList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->attachFileList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    .end local v0           #adapter:Ledu/nctu/e3/HomeworkActivity$FilesAdapter;
    :cond_0
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->handedupfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 207
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->handedUpFileList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 208
    new-instance v0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v2, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->handedupfiles:Ljava/util/ArrayList;

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;-><init>(Ledu/nctu/e3/HomeworkActivity;Ljava/util/ArrayList;I)V

    .line 209
    .restart local v0       #adapter:Ledu/nctu/e3/HomeworkActivity$FilesAdapter;
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->handedUpFileList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    iget-object v1, v1, Ledu/nctu/e3/HomeworkActivity;->handedUpFileList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    .end local v0           #adapter:Ledu/nctu/e3/HomeworkActivity$FilesAdapter;
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ledu/nctu/e3/HomeworkActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 213
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->this$0:Ledu/nctu/e3/HomeworkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/HomeworkActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 176
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 191
    return-void
.end method
