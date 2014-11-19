.class Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;
.super Landroid/os/AsyncTask;
.source "AddTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetBasicDataTask"
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
.field final synthetic this$0:Ledu/nctu/e3/AddTopicActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/AddTopicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
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
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v3, v3, Ledu/nctu/e3/AddTopicActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetTopicUnitList"

    const-string v5, "TopicUnitData"

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "loginTicket"

    aput-object v7, v6, v8

    iget-object v7, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddTopicActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "courseId"

    aput-object v7, v6, v10

    iget-object v7, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddTopicActivity;->courseId:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/AddTopicActivity;->units:Ljava/util/ArrayList;

    .line 242
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->units:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Ledu/nctu/e3/AddTopicActivity;->unitsList:[Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v1, v1, Ledu/nctu/e3/AddTopicActivity;->unitsList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v3, v3, Ledu/nctu/e3/AddTopicActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetTopicForumList"

    const-string v5, "TopicForumData"

    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "loginTicket"

    aput-object v7, v6, v8

    iget-object v7, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddTopicActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "courseId"

    aput-object v7, v6, v10

    iget-object v7, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v7, v7, Ledu/nctu/e3/AddTopicActivity;->courseId:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/AddTopicActivity;->forums:Ljava/util/ArrayList;

    .line 247
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->forums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Ledu/nctu/e3/AddTopicActivity;->forumsList:[Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v1, v1, Ledu/nctu/e3/AddTopicActivity;->forumsList:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 251
    const/4 v1, 0x0

    return-object v1

    .line 244
    :cond_0
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v1, Ledu/nctu/e3/AddTopicActivity;->unitsList:[Ljava/lang/String;

    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v1, v1, Ledu/nctu/e3/AddTopicActivity;->units:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "UnitName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v1, Ledu/nctu/e3/AddTopicActivity;->forumsList:[Ljava/lang/String;

    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v1, v1, Ledu/nctu/e3/AddTopicActivity;->forums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "Caption"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 7
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
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const v6, 0x1090009

    .line 255
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->unit:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v5, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddTopicActivity;->unitsList:[Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 256
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->unit:Landroid/widget/Spinner;

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 257
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->forum:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v5, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddTopicActivity;->forumsList:[Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 258
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->forum:Landroid/widget/Spinner;

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 259
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    invoke-virtual {v2}, Ledu/nctu/e3/AddTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ForumId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, forumId:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->forums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 266
    :goto_1
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ledu/nctu/e3/AddTopicActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 267
    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->forums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "ForumId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    iget-object v2, v2, Ledu/nctu/e3/AddTopicActivity;->forum:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 260
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->this$0:Ledu/nctu/e3/AddTopicActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddTopicActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 236
    return-void
.end method
