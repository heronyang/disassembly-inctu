.class Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

.field private final synthetic val$topicId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    iput-object p2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->val$topicId:Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v1

    const-class v2, Ledu/nctu/e3/AddReplyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v2}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v2

    iget-object v2, v2, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "TopicId"

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->val$topicId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "ReplyId"

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v2}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v2

    iget-object v2, v2, Ledu/nctu/e3/TopicDetailActivity;->replyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v2}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v2

    iget-object v2, v2, Ledu/nctu/e3/TopicDetailActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v2}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v2

    iget-object v2, v2, Ledu/nctu/e3/TopicDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ledu/nctu/e3/TopicDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method
