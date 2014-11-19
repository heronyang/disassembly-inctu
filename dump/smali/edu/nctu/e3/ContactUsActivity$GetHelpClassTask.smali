.class Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;
.super Landroid/os/AsyncTask;
.source "ContactUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/ContactUsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetHelpClassTask"
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
.field final synthetic this$0:Ledu/nctu/e3/ContactUsActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ContactUsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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
    .line 126
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    iget-object v1, p0, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    iget-object v1, v1, Ledu/nctu/e3/ContactUsActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetHelpClassList"

    const-string v3, "HelpClassData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 130
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 136
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "Caption"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ICT\u5ba2\u670d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v2, p0, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "ClassId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/ContactUsActivity;->problemType:Ljava/lang/String;

    .line 134
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ledu/nctu/e3/ContactUsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/ContactUsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 121
    return-void
.end method
