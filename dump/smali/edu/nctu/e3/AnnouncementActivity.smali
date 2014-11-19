.class public Ledu/nctu/e3/AnnouncementActivity;
.super Landroid/app/Activity;
.source "AnnouncementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/AnnouncementActivity$DownloadTask;,
        Ledu/nctu/e3/AnnouncementActivity$FilesAdapter;,
        Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;
    }
.end annotation


# static fields
.field static final metaType:Ljava/lang/String; = "80"


# instance fields
.field adapter:Ledu/nctu/e3/AnnouncementActivity$FilesAdapter;

.field attachFile:Landroid/widget/TextView;

.field beginDate:Ljava/lang/String;

.field bulType:I

.field bulletinId:Ljava/lang/String;

.field content:Landroid/webkit/WebView;

.field contentStr:Ljava/lang/String;

.field courseId:Ljava/lang/String;

.field endDate:Ljava/lang/String;

.field fileList:Landroid/widget/ListView;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getContentStr()Ljava/lang/String;
    .locals 8

    .prologue
    .line 78
    const-string v3, ""

    .line 80
    .local v3, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "announce.html"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 82
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 83
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v3           #result:Ljava/lang/String;
    .local v4, result:Ljava/lang/String;
    :try_start_1
    const-string v5, "\u516c\u544a\u6a19\u984c"

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementActivity;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 85
    .end local v4           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :try_start_2
    const-string v6, "\u516c\u544a\u985e\u5225"

    iget v5, p0, Ledu/nctu/e3/AnnouncementActivity;->bulType:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const v5, 0x7f050037

    invoke-virtual {p0, v5}, Ledu/nctu/e3/AnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v5, "\u958b\u59cb\u65e5\u671f"

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementActivity;->beginDate:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string v5, "\u7d50\u675f\u65e5\u671f"

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementActivity;->endDate:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 88
    const-string v5, "\u5167\u6587"

    iget-object v6, p0, Ledu/nctu/e3/AnnouncementActivity;->contentStr:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 85
    .restart local v0       #buffer:[B
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_0
    const v5, 0x7f050038

    invoke-virtual {p0, v5}, Ledu/nctu/e3/AnnouncementActivity;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_0

    .line 89
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #result:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #result:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #result:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v6}, Ledu/nctu/e3/AnnouncementActivity;->requestWindowFeature(I)Z

    .line 57
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "From"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 59
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v2, 0x7f02000b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 61
    :cond_0
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->content:Landroid/webkit/WebView;

    .line 62
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->fileList:Landroid/widget/ListView;

    .line 63
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->attachFile:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Caption"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->title:Ljava/lang/String;

    .line 65
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BeginDate"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->beginDate:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EndDate"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->endDate:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Content"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->contentStr:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BulletinId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->bulletinId:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "LoginTicket"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->loginTicket:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BulType"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ledu/nctu/e3/AnnouncementActivity;->bulType:I

    .line 72
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CourseId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->courseId:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->content:Landroid/webkit/WebView;

    invoke-direct {p0}, Ledu/nctu/e3/AnnouncementActivity;->getContentStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/AnnouncementActivity;->handler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;-><init>(Ledu/nctu/e3/AnnouncementActivity;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v7

    iget-object v2, p0, Ledu/nctu/e3/AnnouncementActivity;->bulletinId:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "80"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ledu/nctu/e3/AnnouncementActivity;->courseId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AnnouncementActivity$GetAttachFileListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 98
    invoke-virtual {p0}, Ledu/nctu/e3/AnnouncementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
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

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_0
    return v6

    .line 106
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
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
    .line 243
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    return-void
.end method
