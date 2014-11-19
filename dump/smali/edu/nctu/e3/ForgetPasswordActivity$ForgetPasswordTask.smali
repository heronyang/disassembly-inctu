.class Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;
.super Landroid/os/AsyncTask;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/ForgetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForgetPasswordTask"
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
.field final synthetic this$0:Ledu/nctu/e3/ForgetPasswordActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ForgetPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Ledu/nctu/e3/ForgetPasswordActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v0, p0, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Ledu/nctu/e3/ForgetPasswordActivity;

    iget-object v1, p0, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Ledu/nctu/e3/ForgetPasswordActivity;

    iget-object v1, v1, Ledu/nctu/e3/ForgetPasswordActivity;->handler:Landroid/os/Handler;

    const-string v2, "ForgotPassword"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "account"

    aput-object v4, v3, v5

    const/4 v4, 0x1

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 97
    iget-object v0, p0, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Ledu/nctu/e3/ForgetPasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    iget-object v0, p0, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->this$0:Ledu/nctu/e3/ForgetPasswordActivity;

    invoke-virtual {v0}, Ledu/nctu/e3/ForgetPasswordActivity;->finish()V

    .line 99
    return-void
.end method
