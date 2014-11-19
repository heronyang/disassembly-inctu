.class Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "LoginiNCTUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/LoginiNCTUActivity;
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

.field personalCoursePosition:Ljava/lang/StringBuffer;

.field final synthetic this$0:Ledu/nctu/e3/LoginiNCTUActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/LoginiNCTUActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->doInBackground([Ljava/lang/String;)Ljava/util/HashMap;

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
    .line 132
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v4, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v4, v4, Ledu/nctu/e3/LoginiNCTUActivity;->handler:Landroid/os/Handler;

    const-string v5, "Login"

    invoke-static {v3, v4, v5, p1}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 133
    .local v2, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v5, v3, Ledu/nctu/e3/LoginiNCTUActivity;->handler:Landroid/os/Handler;

    const-string v6, "GetPersonalCoursePosition"

    const-string v7, "CoursePositionStatus"

    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v9, "loginTicket"

    aput-object v9, v8, v3

    const/4 v9, 0x1

    const-string v3, "LoginTicket"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v8, v9

    const/4 v3, 0x2

    const-string v9, "accountId"

    aput-object v9, v8, v3

    const/4 v9, 0x3

    const-string v3, "AccountId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    .local v1, positions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->personalCoursePosition:Ljava/lang/StringBuffer;

    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 138
    return-object v2

    .line 136
    :cond_0
    iget-object v4, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->personalCoursePosition:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v6, "Role"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 146
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "LoginTicket"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-virtual {v1}, Ledu/nctu/e3/LoginiNCTUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Ledu/nctu/e3/LoginiNCTUActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    const-class v2, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v2, v1, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "LoginTicket"

    const-string v1, "LoginTicket"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v2, v1, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "AccountId"

    const-string v1, "AccountId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v1, v1, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "CoursePositionStatus"

    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->personalCoursePosition:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    iget-object v1, v1, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-static {v1}, Ledu/nctu/e3/helpers/HttpHelper;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-virtual {v1}, Ledu/nctu/e3/LoginiNCTUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    const v3, 0x7f05000c

    invoke-virtual {v2, v3}, Ledu/nctu/e3/LoginiNCTUActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    .line 126
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->this$0:Ledu/nctu/e3/LoginiNCTUActivity;

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Ledu/nctu/e3/LoginiNCTUActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 128
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 143
    return-void
.end method
