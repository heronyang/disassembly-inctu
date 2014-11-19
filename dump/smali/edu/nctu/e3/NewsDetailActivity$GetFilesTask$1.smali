.class Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;

.field private final synthetic val$file:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;->this$1:Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;

    iput-object p2, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;->val$file:Ljava/util/HashMap;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 79
    iget-object v4, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;->val$file:Ljava/util/HashMap;

    const-string v5, "athFileName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, fileName:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, mimeType:Ljava/lang/String;
    sget-object v1, Ledu/nctu/e3/MainActivity;->appFolder:Ljava/lang/String;

    .line 82
    .local v1, filePath:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;->val$file:Ljava/util/HashMap;

    const-string v5, "athFileUrl"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, url:Ljava/lang/String;
    new-instance v4, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;

    iget-object v5, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;->this$1:Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;

    #getter for: Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;
    invoke-static {v5}, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->access$2(Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;)Ledu/nctu/e3/NewsDetailActivity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;-><init>(Ledu/nctu/e3/NewsDetailActivity;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Ledu/nctu/e3/NewsDetailActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method
