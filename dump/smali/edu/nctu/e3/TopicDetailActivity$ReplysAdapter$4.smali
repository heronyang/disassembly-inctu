.class Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;
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

.field private final synthetic val$replyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    iput-object p2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->val$replyId:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;)Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v1

    const v2, 0x7f050061

    invoke-virtual {v1, v2}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4$1;

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->val$replyId:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4$1;-><init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    iget-object v1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v1}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 312
    return-void
.end method
