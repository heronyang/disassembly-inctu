.class public Ledu/nctu/e3/TopicListActivity;
.super Landroid/app/Activity;
.source "TopicListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/TopicListActivity$GetTopicListTask;,
        Ledu/nctu/e3/TopicListActivity$TopicListAdapter;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field adapter:Ledu/nctu/e3/TopicListActivity$TopicListAdapter;

.field courseId:Ljava/lang/String;

.field forumId:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field topicList:Landroid/widget/ListView;

.field userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0, v3}, Ledu/nctu/e3/TopicListActivity;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 46
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 48
    :cond_0
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/TopicListActivity;->topicList:Landroid/widget/ListView;

    .line 49
    invoke-virtual {p0}, Ledu/nctu/e3/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicListActivity;->loginTicket:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ledu/nctu/e3/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicListActivity;->courseId:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Ledu/nctu/e3/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ForumId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicListActivity;->forumId:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Ledu/nctu/e3/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicListActivity;->accountId:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Ledu/nctu/e3/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserRole"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/TopicListActivity;->userRole:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/TopicListActivity;->handler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 64
    invoke-virtual {p0}, Ledu/nctu/e3/TopicListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 65
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity;->userRole:Ljava/lang/String;

    const-string v1, "stu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x7f090081

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 68
    :cond_0
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

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return v6

    .line 75
    :pswitch_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/AddTopicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "ForumId"

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity;->forumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    new-instance v0, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;-><init>(Ledu/nctu/e3/TopicListActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/nctu/e3/TopicListActivity;->loginTicket:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ledu/nctu/e3/TopicListActivity;->courseId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ledu/nctu/e3/TopicListActivity;->forumId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/TopicListActivity$GetTopicListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 222
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    return-void
.end method
