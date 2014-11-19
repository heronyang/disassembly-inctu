.class Ledu/nctu/e3/AddReplyActivity$AttachFileTask;
.super Landroid/os/AsyncTask;
.source "AddReplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/AddReplyActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/AddReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 9
    .parameter "params"

    .prologue
    .line 223
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v0, v0, Ledu/nctu/e3/AddReplyActivity;->fileInformations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [I

    .line 224
    .local v8, results:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v8

    if-lt v7, v0, :cond_0

    .line 227
    return-object v8

    .line 225
    :cond_0
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v0, v0, Ledu/nctu/e3/AddReplyActivity;->courseId:Ljava/lang/String;

    iget-object v1, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v1, v1, Ledu/nctu/e3/AddReplyActivity;->newTopicReplyId:Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddReplyActivity;->accountId:Ljava/lang/String;

    const-string v3, "31"

    iget-object v4, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddReplyActivity;->fileInformations:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/nctu/e3/AddReplyActivity$FileInformation;

    iget-object v4, v4, Ledu/nctu/e3/AddReplyActivity$FileInformation;->fileName:Ljava/lang/String;

    iget-object v5, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddReplyActivity;->fileInformations:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/nctu/e3/AddReplyActivity$FileInformation;

    iget-object v5, v5, Ledu/nctu/e3/AddReplyActivity$FileInformation;->Base64:Ljava/lang/String;

    iget-object v6, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    iget-object v6, v6, Ledu/nctu/e3/AddReplyActivity;->fileInformations:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ledu/nctu/e3/AddReplyActivity$FileInformation;

    iget-object v6, v6, Ledu/nctu/e3/AddReplyActivity$FileInformation;->ext:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Ledu/nctu/e3/helpers/HttpHelper;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    aput v0, v8, v7

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [I

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 231
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddReplyActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 237
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity$AttachFileTask;->this$0:Ledu/nctu/e3/AddReplyActivity;

    invoke-virtual {v0}, Ledu/nctu/e3/AddReplyActivity;->finish()V

    .line 238
    return-void
.end method
