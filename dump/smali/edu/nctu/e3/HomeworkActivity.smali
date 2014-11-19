.class public Ledu/nctu/e3/HomeworkActivity;
.super Landroid/app/Activity;
.source "HomeworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/HomeworkActivity$DownloadTask;,
        Ledu/nctu/e3/HomeworkActivity$FilesAdapter;,
        Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field attachFileList:Landroid/widget/ListView;

.field content:Landroid/widget/TextView;

.field courseId:Ljava/lang/String;

.field deadline:Landroid/widget/TextView;

.field handedUpFileList:Landroid/widget/ListView;

.field handler:Landroid/os/Handler;

.field hwkId:Ljava/lang/String;

.field hwkSubmitId:Ljava/lang/String;

.field loginTicket:Ljava/lang/String;

.field name:Landroid/widget/TextView;

.field unit:Landroid/widget/TextView;

.field way:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0, v3}, Ledu/nctu/e3/HomeworkActivity;->requestWindowFeature(I)Z

    .line 53
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->setContentView(I)V

    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 55
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 57
    :cond_0
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->name:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->unit:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->content:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->deadline:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->way:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->attachFileList:Landroid/widget/ListView;

    .line 63
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->handedUpFileList:Landroid/widget/ListView;

    .line 64
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->loginTicket:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->accountId:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HomeworkId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->hwkId:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HwkSubmitId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->hwkSubmitId:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->courseId:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/HomeworkActivity;->handler:Landroid/os/Handler;

    .line 70
    new-instance v0, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;-><init>(Ledu/nctu/e3/HomeworkActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/HomeworkActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Ledu/nctu/e3/HomeworkActivity;->accountId:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Ledu/nctu/e3/HomeworkActivity;->hwkId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/HomeworkActivity$GetHwInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 76
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 77
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

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    return v6

    .line 84
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
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
    .line 252
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    return-void
.end method
