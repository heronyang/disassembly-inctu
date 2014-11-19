.class Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "LoginCurriculumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/LoginCurriculumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginTask"
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
.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Ledu/nctu/e3/LoginCurriculumActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/LoginCurriculumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
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
    .line 112
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/LoginCurriculumActivity;->handler:Landroid/os/Handler;

    const-string v2, "Login"

    invoke-static {v0, v1, v2, p1}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->onPostExecute(Ljava/util/HashMap;)V

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
    .line 120
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "LoginTicket"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    invoke-virtual {v1}, Ledu/nctu/e3/LoginCurriculumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Ledu/nctu/e3/LoginCurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    const-class v2, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    iget-object v2, v1, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "LoginTicket"

    const-string v1, "LoginTicket"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    iget-object v2, v1, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "AccountId"

    const-string v1, "AccountId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    invoke-static {v1}, Ledu/nctu/e3/helpers/HttpHelper;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    invoke-virtual {v1}, Ledu/nctu/e3/LoginCurriculumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    const v3, 0x7f05000c

    invoke-virtual {v2, v3}, Ledu/nctu/e3/LoginCurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    .line 106
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginCurriculumActivity;

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Ledu/nctu/e3/LoginCurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 108
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 117
    return-void
.end method
