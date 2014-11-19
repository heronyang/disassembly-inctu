.class Ledu/nctu/e3/NewsDetailActivity$DownloadTask;
.super Landroid/os/AsyncTask;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/NewsDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mimeType:Ljava/lang/String;

.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Ledu/nctu/e3/NewsDetailActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/NewsDetailActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "mimeType"

    .prologue
    .line 93
    iput-object p1, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    iput-object p2, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->mimeType:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    .line 96
    iget-object v0, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f05001c

    invoke-virtual {p1, v1}, Ledu/nctu/e3/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 105
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v0, v1, v2}, Ledu/nctu/e3/helpers/HttpHelper;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 113
    iget-object v3, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 115
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, ext:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->mimeType:Ljava/lang/String;

    .line 118
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v3, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    invoke-virtual {v3, v2}, Ledu/nctu/e3/NewsDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    iget-object v4, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    const v5, 0x7f0500a4

    invoke-virtual {v4, v5}, Ledu/nctu/e3/NewsDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 101
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 110
    return-void
.end method
