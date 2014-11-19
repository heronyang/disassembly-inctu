.class Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;
.super Landroid/os/AsyncTask;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/NewsDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFilesTask"
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
.field final synthetic this$0:Ledu/nctu/e3/NewsDetailActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/NewsDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;)Ledu/nctu/e3/NewsDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
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
    .line 65
    iget-object v0, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    iget-object v1, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/NewsDetailActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/NewsDetailActivity;->newsId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ledu/nctu/e3/helpers/HttpHelper;->getE3NewsFileList(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 69
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 88
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 71
    .local v0, file:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, textView:Landroid/widget/TextView;
    const-string v3, "Title"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    new-instance v3, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;

    invoke-direct {v3, p0, v0}, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask$1;-><init>(Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->this$0:Ledu/nctu/e3/NewsDetailActivity;

    iget-object v3, v3, Ledu/nctu/e3/NewsDetailActivity;->fileList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
