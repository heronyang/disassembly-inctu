.class Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;
.super Ljava/lang/Object;
.source "LoginiNCTUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;

.field private final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->this$1:Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;

    iput-object p2, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 190
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    const-string v2, "athFileName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v2, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->this$1:Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;

    #getter for: Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;
    invoke-static {v1}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->access$2(Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;)Ledu/nctu/e3/LoginiNCTUActivity;

    move-result-object v1

    invoke-direct {v2, v1}, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;-><init>(Ledu/nctu/e3/LoginiNCTUActivity;)V

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    const-string v5, "athFileUrl"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Ledu/nctu/e3/MainActivity;->appFolder:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x2

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    const-string v5, "athFileName"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->this$1:Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;

    #getter for: Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;
    invoke-static {v1}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->access$2(Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;)Ledu/nctu/e3/LoginiNCTUActivity;

    move-result-object v1

    const-class v2, Ledu/nctu/e3/NewsDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "NewsId"

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    const-string v3, "NewsId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v2, "AttachFileCount"

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    const-string v3, "AttachFileCount"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    const-string v2, "Title"

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    const-string v3, "\u6a19\u984c"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v2, "Content"

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->val$map:Ljava/util/HashMap;

    const-string v3, "\u5167\u6587"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;->this$1:Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;

    #getter for: Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;
    invoke-static {v1}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->access$2(Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;)Ledu/nctu/e3/LoginiNCTUActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
