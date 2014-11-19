.class public Ledu/nctu/e3/CourseListActivity;
.super Landroid/app/TabActivity;
.source "CourseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/CourseListActivity$CourseAdapter;,
        Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;,
        Ledu/nctu/e3/CourseListActivity$SetCourseListTask;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field coursePositionStatus:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field preferenceEditor:Landroid/content/SharedPreferences$Editor;

.field preferences:Landroid/content/SharedPreferences;

.field stuCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

.field stuCourseList:Landroid/widget/ListView;

.field stuCourses:Ljava/util/ArrayList;
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

.field taCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

.field taCourseList:Landroid/widget/ListView;

.field taCourses:Ljava/util/ArrayList;
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

.field tabHost:Landroid/widget/TabHost;

.field teaCourseAdapter:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

.field teaCourseList:Landroid/widget/ListView;

.field teaCourses:Ljava/util/ArrayList;
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

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ledu/nctu/e3/CourseListActivity;->requestWindowFeature(I)Z

    .line 57
    const v8, 0x7f030009

    invoke-virtual {p0, v8}, Ledu/nctu/e3/CourseListActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->preferences:Landroid/content/SharedPreferences;

    .line 59
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "LoginTicket"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->loginTicket:Ljava/lang/String;

    .line 61
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "AccountId"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->accountId:Ljava/lang/String;

    .line 62
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "CoursePositionStatus"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    .line 63
    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->stuCourseList:Landroid/widget/ListView;

    .line 64
    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->teaCourseList:Landroid/widget/ListView;

    .line 65
    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->taCourseList:Landroid/widget/ListView;

    .line 66
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->handler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/CourseListActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v8

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    .line 68
    invoke-virtual {p0}, Ledu/nctu/e3/CourseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03002d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 69
    .local v6, teaLayout:Landroid/widget/LinearLayout;
    const v8, 0x7f090077

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 70
    .local v7, teaText:Landroid/widget/TextView;
    const v8, 0x7f050012

    invoke-virtual {p0, v8}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Ledu/nctu/e3/CourseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03002d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 72
    .local v4, taLayout:Landroid/widget/LinearLayout;
    const v8, 0x7f090077

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 73
    .local v5, taText:Landroid/widget/TextView;
    const v8, 0x7f050013

    invoke-virtual {p0, v8}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Ledu/nctu/e3/CourseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03002d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 75
    .local v2, stuLayout:Landroid/widget/LinearLayout;
    const v8, 0x7f090077

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, stuText:Landroid/widget/TextView;
    const v8, 0x7f050011

    invoke-virtual {p0, v8}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v8, 0x7f09001b

    invoke-virtual {p0, v8}, Ledu/nctu/e3/CourseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Ledu/nctu/e3/CourseListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, count:I
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v9, "\u6559\u5e2b"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 80
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v9, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const v10, 0x7f09001b

    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 83
    :cond_0
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v9, "\u52a9\u6559"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 84
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v9, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const v10, 0x7f09001b

    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    :cond_1
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v9, "\u4fee\u8ab2\u751f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v9, "\u65c1\u807d\u751f"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 88
    :cond_2
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v9, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const v10, 0x7f09001b

    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 91
    :cond_3
    const/4 v8, 0x1

    if-ne v1, v8, :cond_4

    .line 92
    invoke-virtual {p0}, Ledu/nctu/e3/CourseListActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 94
    :cond_4
    new-instance v0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;

    invoke-direct {v0, p0}, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;-><init>(Ledu/nctu/e3/CourseListActivity;)V

    .line 95
    .local v0, adapter:Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 96
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 97
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 98
    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 99
    new-instance v8, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;

    invoke-direct {v8, p0}, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;-><init>(Ledu/nctu/e3/CourseListActivity;)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Ledu/nctu/e3/CourseListActivity;->loginTicket:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Ledu/nctu/e3/CourseListActivity;->accountId:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Ledu/nctu/e3/CourseListActivity$SetCourseListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 173
    invoke-virtual {p0}, Ledu/nctu/e3/CourseListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/high16 v3, 0x1000

    const/high16 v2, 0x400

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 181
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 169
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 233
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    return-void
.end method
