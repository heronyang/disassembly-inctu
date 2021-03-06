.class public Ledu/nctu/e3/ForumListActivity;
.super Landroid/app/Activity;
.source "ForumListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/ForumListActivity$ForumAdapter;,
        Ledu/nctu/e3/ForumListActivity$GetForumListTask;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field adapter:Ledu/nctu/e3/ForumListActivity$ForumAdapter;

.field courseId:Ljava/lang/String;

.field forumList:Landroid/widget/ListView;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

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
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v3}, Ledu/nctu/e3/ForumListActivity;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->setContentView(I)V

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 45
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 47
    :cond_0
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/ForumListActivity;->forumList:Landroid/widget/ListView;

    .line 48
    invoke-virtual {p0}, Ledu/nctu/e3/ForumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/ForumListActivity;->loginTicket:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Ledu/nctu/e3/ForumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/ForumListActivity;->courseId:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ledu/nctu/e3/ForumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/ForumListActivity;->accountId:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Ledu/nctu/e3/ForumListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserRole"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/ForumListActivity;->userRole:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/ForumListActivity;->handler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ledu/nctu/e3/ForumListActivity$GetForumListTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/ForumListActivity$GetForumListTask;-><init>(Ledu/nctu/e3/ForumListActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/ForumListActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Ledu/nctu/e3/ForumListActivity;->courseId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ledu/nctu/e3/ForumListActivity$GetForumListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 59
    invoke-virtual {p0}, Ledu/nctu/e3/ForumListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
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

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    return v6

    .line 67
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 194
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ForumListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    return-void
.end method
