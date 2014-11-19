.class public Ledu/nctu/e3/CourseDetailActivity;
.super Landroid/app/Activity;
.source "CourseDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field adapter:Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;

.field courseDetailList:Landroid/widget/ListView;

.field courseId:Ljava/lang/String;

.field courseName:Ljava/lang/String;

.field courseNo:Ljava/lang/String;

.field loginTicket:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;

.field userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v3}, Ledu/nctu/e3/CourseDetailActivity;->requestWindowFeature(I)Z

    .line 38
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->setContentView(I)V

    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    .line 40
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "LoginTicket"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "AccountId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->accountId:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "CourseId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "UserRole"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "CourseName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->courseName:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "CourseNo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->courseNo:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "From"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 47
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 49
    :cond_0
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity;->courseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;

    invoke-direct {v0, p0}, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;-><init>(Ledu/nctu/e3/CourseDetailActivity;)V

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->adapter:Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;

    .line 51
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->courseDetailList:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->courseDetailList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity;->adapter:Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity;->courseDetailList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity;->adapter:Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 59
    invoke-virtual {p0}, Ledu/nctu/e3/CourseDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080008

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
    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

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
    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

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
    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

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
    invoke-virtual {p0, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
