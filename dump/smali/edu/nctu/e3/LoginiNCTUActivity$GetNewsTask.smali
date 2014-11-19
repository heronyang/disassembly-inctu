.class Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;
.super Landroid/os/AsyncTask;
.source "LoginiNCTUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/LoginiNCTUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetNewsTask"
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
.field final synthetic this$0:Ledu/nctu/e3/LoginiNCTUActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/LoginiNCTUActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;)Ledu/nctu/e3/LoginiNCTUActivity;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
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
    .line 178
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v1, v1, Ledu/nctu/e3/LoginiNCTUActivity;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Ledu/nctu/e3/helpers/HttpHelper;->getE3News(Landroid/content/Context;Landroid/os/Handler;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 182
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 184
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v2, v1, Ledu/nctu/e3/LoginiNCTUActivity;->newsContent:Landroid/widget/TextView;

    const-string v1, "\u6a19\u984c"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v1, v1, Ledu/nctu/e3/LoginiNCTUActivity;->newsContent:Landroid/widget/TextView;

    new-instance v2, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;

    invoke-direct {v2, p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask$1;-><init>(Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ledu/nctu/e3/LoginiNCTUActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 204
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/LoginiNCTUActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 173
    return-void
.end method
