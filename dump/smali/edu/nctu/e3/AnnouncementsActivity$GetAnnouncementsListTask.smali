.class public Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;
.super Landroid/os/AsyncTask;
.source "AnnouncementsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AnnouncementsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetAnnouncementsListTask"
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
.field newAnnouncements:Ljava/util/ArrayList;
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

.field oldAnnouncements:Ljava/util/ArrayList;
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

.field final synthetic this$0:Ledu/nctu/e3/AnnouncementsActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/AnnouncementsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 200
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementsActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetStuAnnouncementList"

    const-string v3, "BulletinData"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v5, v5, Ledu/nctu/e3/AnnouncementsActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "courseId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v5, v5, Ledu/nctu/e3/AnnouncementsActivity;->courseId:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string v5, "bulType"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->newAnnouncements:Ljava/util/ArrayList;

    .line 201
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementsActivity;->handler:Landroid/os/Handler;

    const-string v2, "GetStuAnnouncementList"

    const-string v3, "BulletinData"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v7

    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v5, v5, Ledu/nctu/e3/AnnouncementsActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "courseId"

    aput-object v5, v4, v9

    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v5, v5, Ledu/nctu/e3/AnnouncementsActivity;->courseId:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string v5, "bulType"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->oldAnnouncements:Ljava/util/ArrayList;

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 210
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    new-instance v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v3, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->newAnnouncements:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;-><init>(Ledu/nctu/e3/AnnouncementsActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/AnnouncementsActivity;->newAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    .line 211
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    new-instance v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v3, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->oldAnnouncements:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;-><init>(Ledu/nctu/e3/AnnouncementsActivity;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Ledu/nctu/e3/AnnouncementsActivity;->oldAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    .line 212
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v0, v0, Ledu/nctu/e3/AnnouncementsActivity;->newAnnouncementsList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementsActivity;->newAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v0, v0, Ledu/nctu/e3/AnnouncementsActivity;->oldAnnouncementsList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementsActivity;->oldAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v0, v0, Ledu/nctu/e3/AnnouncementsActivity;->newAnnouncementsList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementsActivity;->newAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v0, v0, Ledu/nctu/e3/AnnouncementsActivity;->oldAnnouncementsList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v1, v1, Ledu/nctu/e3/AnnouncementsActivity;->oldAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AnnouncementsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 218
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AnnouncementsActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 197
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 207
    return-void
.end method
