.class Ledu/nctu/e3/ContactUsActivity$SendMailTask;
.super Landroid/os/AsyncTask;
.source "ContactUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/ContactUsActivity;
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
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/ContactUsActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ContactUsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    iget-object v1, p0, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    iget-object v1, v1, Ledu/nctu/e3/ContactUsActivity;->handler:Landroid/os/Handler;

    const-string v2, "RegistryHelpMessage"

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "from"

    aput-object v4, v3, v5

    aget-object v4, p1, v5

    aput-object v4, v3, v6

    const-string v4, "classId"

    aput-object v4, v3, v7

    aget-object v4, p1, v6

    aput-object v4, v3, v8

    const-string v4, "content"

    aput-object v4, v3, v9

    const/4 v4, 0x5

    aget-object v5, p1, v7

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "replyType"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aget-object v5, p1, v8

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "replyData"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    aget-object v5, p1, v9

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "accountId"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const/4 v5, 0x5

    aget-object v5, p1, v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 3
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
    .line 113
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    const-string v0, "Description"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->this$0:Ledu/nctu/e3/ContactUsActivity;

    invoke-virtual {v0}, Ledu/nctu/e3/ContactUsActivity;->finish()V

    .line 115
    return-void
.end method
