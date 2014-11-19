.class public Ledu/nctu/e3/MembersActivity;
.super Landroid/app/TabActivity;
.source "MembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/MembersActivity$GetMemberListTask;,
        Ledu/nctu/e3/MembersActivity$MemberAdapter;,
        Ledu/nctu/e3/MembersActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field courseId:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field studentAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

.field studentList:Landroid/widget/ListView;

.field students:Ljava/util/ArrayList;
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

.field taAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

.field taList:Landroid/widget/ListView;

.field tabHost:Landroid/widget/TabHost;

.field tas:Ljava/util/ArrayList;
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

.field teacherAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

.field teacherList:Landroid/widget/ListView;

.field teachers:Ljava/util/ArrayList;
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

.field userRole:Ljava/lang/String;

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
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ledu/nctu/e3/MembersActivity;->requestWindowFeature(I)Z

    .line 55
    const v7, 0x7f030016

    invoke-virtual {p0, v7}, Ledu/nctu/e3/MembersActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "From"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 57
    const/high16 v7, 0x7f09

    invoke-virtual {p0, v7}, Ledu/nctu/e3/MembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v8, 0x7f02000b

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 59
    :cond_0
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->teacherList:Landroid/widget/ListView;

    .line 60
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->studentList:Landroid/widget/ListView;

    .line 61
    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->taList:Landroid/widget/ListView;

    .line 62
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->handler:Landroid/os/Handler;

    .line 63
    const v7, 0x7f09001b

    invoke-virtual {p0, v7}, Ledu/nctu/e3/MembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 64
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "LoginTicket"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->loginTicket:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "CourseId"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->courseId:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "UserRole"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->userRole:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    .line 68
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03002d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 69
    .local v5, teacherLayout:Landroid/widget/LinearLayout;
    const v7, 0x7f090077

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    .local v6, teacherText:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f050012

    invoke-virtual {p0, v8}, Ledu/nctu/e3/MembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f050013

    invoke-virtual {p0, v8}, Ledu/nctu/e3/MembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03002d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 72
    .local v1, studentLayout:Landroid/widget/LinearLayout;
    const v7, 0x7f090077

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, studentText:Landroid/widget/TextView;
    const v7, 0x7f050023

    invoke-virtual {p0, v7}, Ledu/nctu/e3/MembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03002d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 75
    .local v3, taLayout:Landroid/widget/LinearLayout;
    const v7, 0x7f090077

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 76
    .local v4, taText:Landroid/widget/TextView;
    const v7, 0x7f050024

    invoke-virtual {p0, v7}, Ledu/nctu/e3/MembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v7, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    const-string v9, "teacher"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f09001b

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    iget-object v7, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    const-string v9, "ta"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f09001b

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 79
    iget-object v7, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    const-string v9, "student"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f09001b

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 80
    new-instance v0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;

    invoke-direct {v0, p0}, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;-><init>(Ledu/nctu/e3/MembersActivity;)V

    .line 81
    .local v0, adapter:Ledu/nctu/e3/MembersActivity$MyPagerAdapter;
    iget-object v7, p0, Ledu/nctu/e3/MembersActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 82
    iget-object v7, p0, Ledu/nctu/e3/MembersActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 83
    iget-object v7, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v7, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 84
    iget-object v7, p0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 85
    new-instance v7, Ledu/nctu/e3/MembersActivity$GetMemberListTask;

    invoke-direct {v7, p0}, Ledu/nctu/e3/MembersActivity$GetMemberListTask;-><init>(Ledu/nctu/e3/MembersActivity;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Ledu/nctu/e3/MembersActivity;->loginTicket:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Ledu/nctu/e3/MembersActivity;->courseId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 123
    invoke-virtual {p0}, Ledu/nctu/e3/MembersActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 124
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

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    return v6

    .line 93
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MembersActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MembersActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MembersActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MembersActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
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
    .line 322
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    return-void
.end method
