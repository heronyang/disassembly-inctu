.class public Ledu/nctu/e3/MaterialsActivity;
.super Landroid/app/TabActivity;
.source "MaterialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;,
        Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;,
        Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field courseId:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field lectureAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

.field lecturesList:Landroid/widget/ListView;

.field loginTicket:Ljava/lang/String;

.field referenceAdapter:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

.field referencesList:Landroid/widget/ListView;

.field tabHost:Landroid/widget/TabHost;

.field userRole:Ljava/lang/String;

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/nctu/e3/MaterialsActivity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Ledu/nctu/e3/MaterialsActivity;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private compareDate(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "date1"
    .parameter "date2"

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 302
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, toks1:[Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, toks2:[Ljava/lang/String;
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x16d

    aget-object v9, v0, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x1f

    add-int/2addr v8, v9

    aget-object v9, v0, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v2, v8

    .line 305
    .local v2, value1:J
    aget-object v8, v1, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x16d

    aget-object v9, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x1f

    add-int/2addr v8, v9

    aget-object v9, v1, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v4, v8

    .line 306
    .local v4, value2:J
    cmp-long v8, v2, v4

    if-gez v8, :cond_1

    const/4 v6, -0x1

    .line 308
    :cond_0
    :goto_0
    return v6

    .line 307
    :cond_1
    cmp-long v8, v2, v4

    if-gtz v8, :cond_0

    move v6, v7

    .line 308
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f090077

    const v7, 0x7f03002d

    const/4 v10, 0x0

    const v9, 0x7f09001b

    const/4 v8, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v8}, Ledu/nctu/e3/MaterialsActivity;->requestWindowFeature(I)Z

    .line 51
    const v5, 0x7f030014

    invoke-virtual {p0, v5}, Ledu/nctu/e3/MaterialsActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "From"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 53
    const/high16 v5, 0x7f09

    invoke-virtual {p0, v5}, Ledu/nctu/e3/MaterialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v6, 0x7f02000b

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "LoginTicket"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->loginTicket:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "CourseId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->courseId:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "UserRole"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->userRole:Ljava/lang/String;

    .line 58
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->lecturesList:Landroid/widget/ListView;

    .line 59
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->referencesList:Landroid/widget/ListView;

    .line 60
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->handler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p0, v9}, Ledu/nctu/e3/MaterialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 62
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    iput-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    .line 63
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 64
    .local v1, lectureLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    .local v2, lectureText:Landroid/widget/TextView;
    const v5, 0x7f050017

    invoke-virtual {p0, v5}, Ledu/nctu/e3/MaterialsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 67
    .local v3, referenceLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 68
    .local v4, referenceText:Landroid/widget/TextView;
    const v5, 0x7f050018

    invoke-virtual {p0, v5}, Ledu/nctu/e3/MaterialsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    const-string v7, "lecture"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 70
    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    const-string v7, "reference"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 71
    new-instance v0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;

    invoke-direct {v0, p0}, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;-><init>(Ledu/nctu/e3/MaterialsActivity;)V

    .line 72
    .local v0, adapter:Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;
    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 74
    iget-object v5, p0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 75
    new-instance v5, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;

    invoke-direct {v5, p0}, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;-><init>(Ledu/nctu/e3/MaterialsActivity;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Ledu/nctu/e3/MaterialsActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v7, p0, Ledu/nctu/e3/MaterialsActivity;->courseId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Ledu/nctu/e3/MaterialsActivity$GetMaterialsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 81
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
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

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    return v6

    .line 89
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
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
    .line 311
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 312
    return-void
.end method
