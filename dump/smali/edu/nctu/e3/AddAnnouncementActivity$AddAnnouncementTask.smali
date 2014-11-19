.class Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;
.super Landroid/os/AsyncTask;
.source "AddAnnouncementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddAnnouncementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddAnnouncementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/AddAnnouncementActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/AddAnnouncementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v4, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddAnnouncementActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, nameStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddAnnouncementActivity;->beginDate:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, beginDateStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddAnnouncementActivity;->endDate:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, endDateStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v4, v4, Ledu/nctu/e3/AddAnnouncementActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, contentStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v5, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v5, v5, Ledu/nctu/e3/AddAnnouncementActivity;->handler:Landroid/os/Handler;

    const-string v6, "AddAnnouncement"

    const/16 v7, 0x12

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "loginTicket"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddAnnouncementActivity;->loginTicket:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "courseId"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddAnnouncementActivity;->courseId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "accountId"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddAnnouncementActivity;->accountId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "bulType"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddAnnouncementActivity;->bulType:Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "caption"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    aput-object v3, v7, v8

    const/16 v8, 0xa

    const-string v9, "content"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "beginDate"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    aput-object v0, v7, v8

    const/16 v8, 0xe

    const-string v9, "endDate"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    aput-object v2, v7, v8

    const/16 v8, 0x10

    const-string v9, "notify"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    iget-object v9, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v9, v9, Ledu/nctu/e3/AddAnnouncementActivity;->notify:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 193
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v1, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    const v2, 0x7f0500aa

    invoke-virtual {v1, v2}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    iget-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    invoke-virtual {v0}, Ledu/nctu/e3/AddAnnouncementActivity;->finish()V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    iget-object v1, p0, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->this$0:Ledu/nctu/e3/AddAnnouncementActivity;

    const v2, 0x7f0500ab

    invoke-virtual {v1, v2}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
