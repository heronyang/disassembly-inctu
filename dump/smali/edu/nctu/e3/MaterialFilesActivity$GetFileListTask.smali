.class Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;
.super Landroid/os/AsyncTask;
.source "MaterialFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MaterialFilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFileListTask"
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
.field final synthetic this$0:Ledu/nctu/e3/MaterialFilesActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/MaterialFilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
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
    .line 111
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v1, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v2, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v2, v2, Ledu/nctu/e3/MaterialFilesActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetAttachFileList"

    const-string v4, "AttachFileInfoData"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "loginTicket"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v7, v7, Ledu/nctu/e3/MaterialFilesActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "resId"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v7, v7, Ledu/nctu/e3/MaterialFilesActivity;->resId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "metaType"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "10"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "courseId"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v7, v7, Ledu/nctu/e3/MaterialFilesActivity;->courseId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 120
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    new-instance v1, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;

    iget-object v2, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    invoke-direct {v1, v2}, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;-><init>(Ledu/nctu/e3/MaterialFilesActivity;)V

    iput-object v1, v0, Ledu/nctu/e3/MaterialFilesActivity;->adapter:Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;

    .line 121
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialFilesActivity;->filelist:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialFilesActivity;->adapter:Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialFilesActivity;->filelist:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialFilesActivity;->adapter:Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/MaterialFilesActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 124
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/MaterialFilesActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 106
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 117
    return-void
.end method
