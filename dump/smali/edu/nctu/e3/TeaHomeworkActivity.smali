.class public Ledu/nctu/e3/TeaHomeworkActivity;
.super Landroid/app/TabActivity;
.source "TeaHomeworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;,
        Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field courseId:Ljava/lang/String;

.field deadline:Landroid/widget/TextView;

.field description:Landroid/webkit/WebView;

.field handler:Landroid/os/Handler;

.field homeworkInfo:Ljava/util/HashMap;
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

.field hwkId:Ljava/lang/String;

.field loginTicket:Ljava/lang/String;

.field name:Landroid/widget/TextView;

.field nosubmitStudentList:Landroid/widget/ListView;

.field nosubmitStudents:Ljava/util/ArrayList;
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

.field submitStudentList:Landroid/widget/ListView;

.field submitStudents:Ljava/util/ArrayList;
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

.field unit:Landroid/widget/TextView;

.field way:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f090077

    const v6, 0x7f03002d

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v7}, Ledu/nctu/e3/TeaHomeworkActivity;->requestWindowFeature(I)Z

    .line 54
    const v4, 0x7f03001b

    invoke-virtual {p0, v4}, Ledu/nctu/e3/TeaHomeworkActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "From"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 56
    const/high16 v4, 0x7f09

    invoke-virtual {p0, v4}, Ledu/nctu/e3/TeaHomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "LoginTicket"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->loginTicket:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CourseId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->courseId:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "HomeworkId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->hwkId:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "AccountId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->accountId:Ljava/lang/String;

    .line 62
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->handler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    iput-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->tabHost:Landroid/widget/TabHost;

    .line 64
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    .local v0, nosubmitLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, nosubmitText:Landroid/widget/TextView;
    const v4, 0x7f05005b

    invoke-virtual {p0, v4}, Ledu/nctu/e3/TeaHomeworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 68
    .local v2, submitLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 69
    .local v3, submitText:Landroid/widget/TextView;
    const v4, 0x7f05005c

    invoke-virtual {p0, v4}, Ledu/nctu/e3/TeaHomeworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Ledu/nctu/e3/TeaHomeworkActivity;->tabHost:Landroid/widget/TabHost;

    const-string v6, "nosubmit"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f090058

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 71
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Ledu/nctu/e3/TeaHomeworkActivity;->tabHost:Landroid/widget/TabHost;

    const-string v6, "submit"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f09005d

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 72
    new-instance v4, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;

    invoke-direct {v4, p0}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;-><init>(Ledu/nctu/e3/TeaHomeworkActivity;)V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworkActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworkActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget-object v7, p0, Ledu/nctu/e3/TeaHomeworkActivity;->accountId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Ledu/nctu/e3/TeaHomeworkActivity;->hwkId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ledu/nctu/e3/TeaHomeworkActivity$GetHomeworkDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 78
    invoke-virtual {p0}, Ledu/nctu/e3/TeaHomeworkActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
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

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    return v6

    .line 86
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
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
    .line 297
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/TeaHomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 298
    return-void
.end method
