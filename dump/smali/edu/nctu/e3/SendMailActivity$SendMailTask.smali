.class Ledu/nctu/e3/SendMailActivity$SendMailTask;
.super Landroid/os/AsyncTask;
.source "SendMailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/SendMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMailTask"
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
.field final synthetic this$0:Ledu/nctu/e3/SendMailActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/SendMailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Ledu/nctu/e3/SendMailActivity$SendMailTask;->this$0:Ledu/nctu/e3/SendMailActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/SendMailActivity$SendMailTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity$SendMailTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$SendMailTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v1, v1, Ledu/nctu/e3/SendMailActivity;->handler:Landroid/os/Handler;

    const-string v2, "SendMail"

    const/16 v3, 0x12

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "loginTicket"

    aput-object v4, v3, v5

    aget-object v4, p1, v5

    aput-object v4, v3, v6

    const-string v4, "from"

    aput-object v4, v3, v7

    aget-object v4, p1, v6

    aput-object v4, v3, v8

    const-string v4, "to"

    aput-object v4, v3, v9

    const/4 v4, 0x5

    aget-object v5, p1, v7

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "cc"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aget-object v5, p1, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "other"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aget-object v5, p1, v9

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "subject"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const/4 v5, 0x5

    aget-object v5, p1, v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "content"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const/4 v5, 0x6

    aget-object v5, p1, v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "courseId"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const/4 v5, 0x7

    aget-object v5, p1, v5

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "userRole"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const/16 v5, 0x8

    aget-object v5, p1, v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Description"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/SendMailActivity$SendMailTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 273
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity$SendMailTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity$SendMailTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    invoke-virtual {v0}, Ledu/nctu/e3/SendMailActivity;->finish()V

    .line 275
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/SendMailActivity$SendMailTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 270
    return-void
.end method
