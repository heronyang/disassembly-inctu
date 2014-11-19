.class Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2$1;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;

.field private final synthetic val$topicId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2$1;->this$2:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;

    iput-object p2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2$1;->val$topicId:Ljava/lang/String;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 250
    new-instance v0, Ledu/nctu/e3/TopicDetailActivity$DeleteTopicTask;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2$1;->this$2:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;)Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    move-result-object v1

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$DeleteTopicTask;-><init>(Ledu/nctu/e3/TopicDetailActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2$1;->val$topicId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$DeleteTopicTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void
.end method
