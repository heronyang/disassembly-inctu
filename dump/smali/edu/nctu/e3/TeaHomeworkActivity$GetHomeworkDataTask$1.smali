.class Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;
.super Ljava/lang/Object;
.source "TeaHomeworkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->this$1:Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

    iput p2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->val$index:I

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->this$1:Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

    #getter for: Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;
    invoke-static {v1}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->access$3(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;)Ledu/nctu/e3/TeaHomeworkActivity;

    move-result-object v1

    const-class v2, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->this$1:Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

    #getter for: Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;
    invoke-static {v2}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->access$3(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;)Ledu/nctu/e3/TeaHomeworkActivity;

    move-result-object v2

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->this$1:Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

    #getter for: Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;
    invoke-static {v2}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->access$3(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;)Ledu/nctu/e3/TeaHomeworkActivity;

    move-result-object v2

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v2, "HwkSubmitId"

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->this$1:Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

    #getter for: Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;
    invoke-static {v1}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->access$3(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;)Ledu/nctu/e3/TeaHomeworkActivity;

    move-result-object v1

    iget-object v1, v1, Ledu/nctu/e3/TeaHomeworkActivity;->submitStudents:Ljava/util/ArrayList;

    iget v3, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->val$index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "HwkSubmitId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask$1;->this$1:Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

    #getter for: Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;
    invoke-static {v1}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->access$3(Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;)Ledu/nctu/e3/TeaHomeworkActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ledu/nctu/e3/TeaHomeworkActivity;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method
