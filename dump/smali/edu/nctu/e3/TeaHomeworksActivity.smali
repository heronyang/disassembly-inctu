.class public Ledu/nctu/e3/TeaHomeworksActivity;
.super Landroid/app/TabActivity;
.source "TeaHomeworksActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;,
        Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;,
        Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field courseId:Ljava/lang/String;

.field finishhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

.field finishhwList:Landroid/widget/ListView;

.field finishhws:Ljava/util/ArrayList;
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

.field handler:Landroid/os/Handler;

.field linearLayout0:Landroid/widget/LinearLayout;

.field linearLayout1:Landroid/widget/LinearLayout;

.field linearLayout2:Landroid/widget/LinearLayout;

.field linearLayout3:Landroid/widget/LinearLayout;

.field loginTicket:Ljava/lang/String;

.field noticehwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

.field noticehwList:Landroid/widget/ListView;

.field noticehws:Ljava/util/ArrayList;
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

.field onhwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

.field onhwList:Landroid/widget/ListView;

.field onhws:Ljava/util/ArrayList;
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

.field viewPager:Landroid/support/v4/view/ViewPager;

.field waithwAdapter:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;

.field waithwList:Landroid/widget/ListView;

.field waithws:Ljava/util/ArrayList;
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
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super/range {p0 .. p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->requestWindowFeature(I)Z

    .line 61
    const v14, 0x7f03001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->setContentView(I)V

    .line 62
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "From"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 63
    const/high16 v14, 0x7f09

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    const v15, 0x7f02000b

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 65
    :cond_0
    new-instance v14, Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->onhwList:Landroid/widget/ListView;

    .line 66
    new-instance v14, Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->waithwList:Landroid/widget/ListView;

    .line 67
    new-instance v14, Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->finishhwList:Landroid/widget/ListView;

    .line 68
    new-instance v14, Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->noticehwList:Landroid/widget/ListView;

    .line 69
    const v14, 0x7f09001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 70
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "LoginTicket"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->loginTicket:Ljava/lang/String;

    .line 71
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "CourseId"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->courseId:Ljava/lang/String;

    .line 72
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "AccountId"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->accountId:Ljava/lang/String;

    .line 73
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->handler:Landroid/os/Handler;

    .line 74
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    .line 75
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f03002d

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 76
    .local v6, onLayout:Landroid/widget/LinearLayout;
    const v14, 0x7f090077

    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 77
    .local v7, onText:Landroid/widget/TextView;
    const v14, 0x7f050053

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f03002d

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 79
    .local v12, waitLayout:Landroid/widget/LinearLayout;
    const v14, 0x7f090077

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 80
    .local v13, waitText:Landroid/widget/TextView;
    const v14, 0x7f050054

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f03002d

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 82
    .local v2, finishLayout:Landroid/widget/LinearLayout;
    const v14, 0x7f090077

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, finishText:Landroid/widget/TextView;
    const v14, 0x7f050055

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f03002d

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 85
    .local v4, noticeLayout:Landroid/widget/LinearLayout;
    const v14, 0x7f090077

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 86
    .local v5, noticeText:Landroid/widget/TextView;
    const v14, 0x7f050056

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    const-string v16, "on"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    const v16, 0x7f09001b

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    const-string v16, "wait"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    const v16, 0x7f09001b

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    const-string v16, "finish"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    const v16, 0x7f09001b

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    const-string v16, "notice"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    const v16, 0x7f09001b

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 91
    new-instance v1, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;-><init>(Ledu/nctu/e3/TeaHomeworksActivity;)V

    .line 92
    .local v1, adapter:Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v14, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 96
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v8, textView0:Landroid/widget/TextView;
    const v14, 0x1030042

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 98
    const/high16 v14, -0x1

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    const v14, 0x7f05009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v9, textView1:Landroid/widget/TextView;
    const v14, 0x1030042

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 102
    const/high16 v14, -0x1

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    const v14, 0x7f05009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v10, textView2:Landroid/widget/TextView;
    const v14, 0x1030042

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 106
    const/high16 v14, -0x1

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const v14, 0x7f05009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v11, textView3:Landroid/widget/TextView;
    const v14, 0x1030042

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 110
    const/high16 v14, -0x1

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    const v14, 0x7f05009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->onhwList:Landroid/widget/ListView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->waithwList:Landroid/widget/ListView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->finishhwList:Landroid/widget/ListView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/nctu/e3/TeaHomeworksActivity;->noticehwList:Landroid/widget/ListView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v14, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;-><init>(Ledu/nctu/e3/TeaHomeworksActivity;)V

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->loginTicket:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->courseId:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Ledu/nctu/e3/TeaHomeworksActivity$GetHomeworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 134
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworksActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
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

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    return v6

    .line 142
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
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
    .line 374
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 375
    return-void
.end method
