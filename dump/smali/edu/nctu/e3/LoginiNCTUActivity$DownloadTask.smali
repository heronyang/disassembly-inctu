.class Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;
.super Landroid/os/AsyncTask;
.source "LoginiNCTUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/LoginiNCTUActivity;
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
.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Ledu/nctu/e3/LoginiNCTUActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/LoginiNCTUActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    .line 211
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f05001c

    invoke-virtual {p1, v1}, Ledu/nctu/e3/LoginiNCTUActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 220
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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 224
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 225
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, ext:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, mimeType:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-virtual {v3, v1}, Ledu/nctu/e3/LoginiNCTUActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 216
    return-void
.end method
