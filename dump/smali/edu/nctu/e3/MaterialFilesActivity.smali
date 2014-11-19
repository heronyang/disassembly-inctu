.class public Ledu/nctu/e3/MaterialFilesActivity;
.super Landroid/app/Activity;
.source "MaterialFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/MaterialFilesActivity$DownloadTask;,
        Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;,
        Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;
    }
.end annotation


# static fields
.field static final metaType:Ljava/lang/String; = "10"


# instance fields
.field adapter:Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;

.field courseId:Ljava/lang/String;

.field filelist:Landroid/widget/ListView;

.field files:Ljava/util/ArrayList;
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

.field loginTicket:Ljava/lang/String;

.field resId:Ljava/lang/String;

.field final sizeFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity;->sizeFormat:Ljava/text/DecimalFormat;

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v3}, Ledu/nctu/e3/MaterialFilesActivity;->requestWindowFeature(I)Z

    .line 51
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 53
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 55
    :cond_0
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Ledu/nctu/e3/MaterialFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DisplayName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity;->filelist:Landroid/widget/ListView;

    .line 57
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity;->loginTicket:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ResId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity;->resId:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity;->courseId:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;-><init>(Ledu/nctu/e3/MaterialFilesActivity;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/MaterialFilesActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Ledu/nctu/e3/MaterialFilesActivity;->resId:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "10"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ledu/nctu/e3/MaterialFilesActivity;->courseId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/MaterialFilesActivity$GetFileListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/MaterialFilesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
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

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    return v6

    .line 75
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
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
    .line 219
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MaterialFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 220
    return-void
.end method
