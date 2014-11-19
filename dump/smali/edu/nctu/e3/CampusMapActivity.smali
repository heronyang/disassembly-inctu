.class public Ledu/nctu/e3/CampusMapActivity;
.super Landroid/app/TabActivity;
.source "CampusMapActivity.java"


# instance fields
.field tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f090077

    const v5, 0x7f03002d

    .line 17
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CampusMapActivity;->requestWindowFeature(I)Z

    .line 19
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CampusMapActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Ledu/nctu/e3/CampusMapActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    iput-object v4, p0, Ledu/nctu/e3/CampusMapActivity;->tabHost:Landroid/widget/TabHost;

    .line 21
    invoke-virtual {p0}, Ledu/nctu/e3/CampusMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 22
    .local v2, kuangFuLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 23
    .local v3, kuangFuText:Landroid/widget/TextView;
    const v4, 0x7f050090

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CampusMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Ledu/nctu/e3/CampusMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    .local v0, boaiLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 26
    .local v1, boaiText:Landroid/widget/TextView;
    const v4, 0x7f05008f

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CampusMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v4, p0, Ledu/nctu/e3/CampusMapActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Ledu/nctu/e3/CampusMapActivity;->tabHost:Landroid/widget/TabHost;

    const-string v6, "kuangfu"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 28
    iget-object v4, p0, Ledu/nctu/e3/CampusMapActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Ledu/nctu/e3/CampusMapActivity;->tabHost:Landroid/widget/TabHost;

    const-string v6, "boai"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 34
    invoke-virtual {p0}, Ledu/nctu/e3/CampusMapActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
