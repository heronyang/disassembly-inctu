.class public Ledu/nctu/e3/NewsActivity;
.super Landroid/app/Activity;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/NewsActivity$DownloadTask;,
        Ledu/nctu/e3/NewsActivity$GetNewsTask;,
        Ledu/nctu/e3/NewsActivity$NewsAdapter;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field news:Ljava/util/ArrayList;
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

.field newsList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v1}, Ledu/nctu/e3/NewsActivity;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Ledu/nctu/e3/NewsActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Ledu/nctu/e3/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ledu/nctu/e3/NewsActivity;->newsList:Landroid/widget/ListView;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/NewsActivity;->handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Ledu/nctu/e3/NewsActivity$GetNewsTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/NewsActivity$GetNewsTask;-><init>(Ledu/nctu/e3/NewsActivity;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/NewsActivity$GetNewsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 46
    invoke-virtual {p0}, Ledu/nctu/e3/NewsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 135
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    return-void
.end method
