.class public Ledu/nctu/e3/AnnouncementsActivity;
.super Landroid/app/TabActivity;
.source "AnnouncementsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;,
        Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;,
        Ledu/nctu/e3/AnnouncementsActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field courseId:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field newAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

.field newAnnouncementsList:Landroid/widget/ListView;

.field oldAdapter:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

.field oldAnnouncementsList:Landroid/widget/ListView;

.field tabHost:Landroid/widget/TabHost;

.field userRole:Ljava/lang/String;

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f050014

    const v7, 0x7f03002d

    const/4 v10, 0x0

    const v9, 0x7f09001b

    const/4 v8, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, v8}, Ledu/nctu/e3/AnnouncementsActivity;->requestWindowFeature(I)Z

    .line 50
    const v5, 0x7f030004

    invoke-virtual {p0, v5}, Ledu/nctu/e3/AnnouncementsActivity;->setContentView(I)V

    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "From"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 52
    const/high16 v5, 0x7f09

    invoke-virtual {p0, v5}, Ledu/nctu/e3/AnnouncementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v6, 0x7f02000b

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "LoginTicket"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->loginTicket:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "CourseId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->courseId:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "UserRole"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->userRole:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "AccountId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->accountId:Ljava/lang/String;

    .line 58
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->newAnnouncementsList:Landroid/widget/ListView;

    .line 59
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->oldAnnouncementsList:Landroid/widget/ListView;

    .line 60
    invoke-virtual {p0, v9}, Ledu/nctu/e3/AnnouncementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 61
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->handler:Landroid/os/Handler;

    .line 62
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    .line 63
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 64
    .local v1, newLayout:Landroid/widget/LinearLayout;
    const v5, 0x7f090077

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    .local v2, newText:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f050015

    invoke-virtual {p0, v6}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 67
    .local v3, oldLayout:Landroid/widget/LinearLayout;
    const v5, 0x7f090077

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 68
    .local v4, oldText:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f050016

    invoke-virtual {p0, v6}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    const-string v7, "new"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 70
    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    const-string v7, "old"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 71
    new-instance v0, Ledu/nctu/e3/AnnouncementsActivity$MyPagerAdapter;

    invoke-direct {v0, p0}, Ledu/nctu/e3/AnnouncementsActivity$MyPagerAdapter;-><init>(Ledu/nctu/e3/AnnouncementsActivity;)V

    .line 72
    .local v0, adapter:Ledu/nctu/e3/AnnouncementsActivity$MyPagerAdapter;
    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 74
    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 75
    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 76
    iget-object v5, p0, Ledu/nctu/e3/AnnouncementsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v10}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 86
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity;->userRole:Ljava/lang/String;

    const-string v1, "stu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const v0, 0x7f09007d

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 90
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

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    return v6

    .line 97
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/AddAnnouncementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementsActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementsActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementsActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 81
    new-instance v0, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;-><init>(Ledu/nctu/e3/AnnouncementsActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/nctu/e3/AnnouncementsActivity;->loginTicket:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ledu/nctu/e3/AnnouncementsActivity;->courseId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AnnouncementsActivity$GetAnnouncementsListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 322
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    return-void
.end method
