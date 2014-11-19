.class public Ledu/nctu/e3/NewsDetailActivity;
.super Landroid/app/Activity;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/NewsDetailActivity$DownloadTask;,
        Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;
    }
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field fileList:Landroid/widget/LinearLayout;

.field handler:Landroid/os/Handler;

.field newsId:Ljava/lang/String;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v4}, Ledu/nctu/e3/NewsDetailActivity;->requestWindowFeature(I)Z

    .line 38
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Ledu/nctu/e3/NewsDetailActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Ledu/nctu/e3/NewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->title:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Ledu/nctu/e3/NewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->content:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Ledu/nctu/e3/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->content:Landroid/widget/TextView;

    invoke-virtual {p0}, Ledu/nctu/e3/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Ledu/nctu/e3/NewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->fileList:Landroid/widget/LinearLayout;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->handler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p0}, Ledu/nctu/e3/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AttachFileCount"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->fileList:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NewsId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/NewsDetailActivity;->newsId:Ljava/lang/String;

    .line 49
    new-instance v0, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;-><init>(Ledu/nctu/e3/NewsDetailActivity;)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/NewsDetailActivity;->newsId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ledu/nctu/e3/NewsDetailActivity$GetFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 56
    invoke-virtual {p0}, Ledu/nctu/e3/NewsDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
