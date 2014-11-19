.class public Ledu/nctu/e3/TopicDetailActivity;
.super Landroid/app/Activity;
.source "TopicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/TopicDetailActivity$DeleteReplyTask;,
        Ledu/nctu/e3/TopicDetailActivity$DeleteTopicTask;,
        Ledu/nctu/e3/TopicDetailActivity$DownloadTask;,
        Ledu/nctu/e3/TopicDetailActivity$GetReplyList;,
        Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;,
        Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;
    }
.end annotation


# static fields
.field static final isTea:Ljava/lang/String; = "true"


# instance fields
.field accountId:Ljava/lang/String;

.field courseId:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field replyId:Ljava/lang/String;

.field replyList:Landroid/widget/ListView;

.field replys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field replysFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field topicFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field topicId:Ljava/lang/String;

.field topicInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field treeNodeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v3}, Ledu/nctu/e3/TopicDetailActivity;->requestWindowFeature(I)Z

    .line 58
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 60
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 62
    :cond_0
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->replyList:Landroid/widget/ListView;

    .line 63
    invoke-virtual {p0}, Ledu/nctu/e3/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Ledu/nctu/e3/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->accountId:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Ledu/nctu/e3/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TopicId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->topicId:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ledu/nctu/e3/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ReplyId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->replyId:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->courseId:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ledu/nctu/e3/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TreeNodeId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->treeNodeId:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/TopicDetailActivity;->handler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 79
    invoke-virtual {p0}, Ledu/nctu/e3/TopicDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x1000

    const/high16 v4, 0x400

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    return v6

    .line 87
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    new-instance v0, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;-><init>(Ledu/nctu/e3/TopicDetailActivity;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity;->loginTicket:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity;->accountId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity;->topicId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ledu/nctu/e3/TopicDetailActivity;->replyId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "true"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicDetailActivity$GetTopicInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 410
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    return-void
.end method
