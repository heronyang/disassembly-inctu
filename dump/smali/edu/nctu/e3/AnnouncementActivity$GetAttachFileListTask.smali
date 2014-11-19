.class Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;
.super Landroid/os/AsyncTask;
.source "AnnouncementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AnnouncementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAttachFileListTask"
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
.field final synthetic this$0:Ledu/nctu/e3/AnnouncementActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/AnnouncementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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
    .line 140
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetAttachFileList"

    const-string v3, "AttachFileInfoData"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "loginTicket"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v6, v6, Ledu/nctu/e3/AnnouncementActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "resId"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v6, v6, Ledu/nctu/e3/AnnouncementActivity;->bulletinId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "metaType"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "80"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "courseId"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v6, v6, Ledu/nctu/e3/AnnouncementActivity;->courseId:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 148
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v0, v0, Ledu/nctu/e3/AnnouncementActivity;->attachFile:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    new-instance v1, Ledu/nctu/e3/AnnouncementActivity$FilesAdapter;

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    invoke-direct {v1, v2, p1}, Ledu/nctu/e3/AnnouncementActivity$FilesAdapter;-><init>(Ledu/nctu/e3/AnnouncementActivity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Ledu/nctu/e3/AnnouncementActivity;->adapter:Ledu/nctu/e3/AnnouncementActivity$FilesAdapter;

    .line 151
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v0, v0, Ledu/nctu/e3/AnnouncementActivity;->fileList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementActivity;->adapter:Ledu/nctu/e3/AnnouncementActivity$FilesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v0, v0, Ledu/nctu/e3/AnnouncementActivity;->fileList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementActivity;->adapter:Ledu/nctu/e3/AnnouncementActivity$FilesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    :cond_0
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AnnouncementActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 155
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->this$0:Ledu/nctu/e3/AnnouncementActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AnnouncementActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 137
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 145
    return-void
.end method
