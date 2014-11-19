.class Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;
.super Landroid/os/AsyncTask;
.source "MaterialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MaterialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetMaterialsTask"
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
.field lectures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field references:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ledu/nctu/e3/MaterialsActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/MaterialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
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
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 185
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialsActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetMaterialDocList"

    const-string v3, "MaterialDocData"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v5, v5, Ledu/nctu/e3/MaterialsActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "courseId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v5, v5, Ledu/nctu/e3/MaterialsActivity;->courseId:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string v5, "docType"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->lectures:Ljava/util/ArrayList;

    .line 186
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialsActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetMaterialDocList"

    const-string v3, "MaterialDocData"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v5, v5, Ledu/nctu/e3/MaterialsActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "courseId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v5, v5, Ledu/nctu/e3/MaterialsActivity;->courseId:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string v5, "docType"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->references:Ljava/util/ArrayList;

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    new-instance v1, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    iget-object v2, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v3, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->lectures:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;-><init>(Ledu/nctu/e3/MaterialsActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/MaterialsActivity;->lectureAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    .line 196
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    new-instance v1, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    iget-object v2, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v3, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->references:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v5}, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;-><init>(Ledu/nctu/e3/MaterialsActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/MaterialsActivity;->referenceAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    .line 197
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->lecturesList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialsActivity;->lectureAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->referencesList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialsActivity;->referenceAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->lecturesList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialsActivity;->lectureAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->referencesList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v1, v1, Ledu/nctu/e3/MaterialsActivity;->referenceAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 202
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 203
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/MaterialsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 204
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->this$0:Ledu/nctu/e3/MaterialsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/MaterialsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 182
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 192
    return-void
.end method
