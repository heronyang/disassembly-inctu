.class public Ledu/nctu/e3/HomeworkSubmittedFilesActivity;
.super Landroid/app/Activity;
.source "HomeworkSubmittedFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/HomeworkSubmittedFilesActivity$DownloadTask;,
        Ledu/nctu/e3/HomeworkSubmittedFilesActivity$FilesAdapter;,
        Ledu/nctu/e3/HomeworkSubmittedFilesActivity$GetFileListTask;
    }
.end annotation


# static fields
.field static final metaType:Ljava/lang/String; = "21"


# instance fields
.field courseId:Ljava/lang/String;

.field fileList:Landroid/widget/ListView;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field resId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
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

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v3}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 47
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 49
    :cond_0
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->fileList:Landroid/widget/ListView;

    .line 51
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->loginTicket:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HwkSubmitId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->resId:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->courseId:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->handler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity$GetFileListTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity$GetFileListTask;-><init>(Ledu/nctu/e3/HomeworkSubmittedFilesActivity;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->resId:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "21"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->courseId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity$GetFileListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 61
    invoke-virtual {p0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
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

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_0
    return v6

    .line 69
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 75
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
