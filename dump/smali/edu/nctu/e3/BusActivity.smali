.class public Ledu/nctu/e3/BusActivity;
.super Landroid/app/Activity;
.source "BusActivity.java"


# instance fields
.field busWeb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ledu/nctu/e3/BusActivity;->requestWindowFeature(I)Z

    .line 18
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Ledu/nctu/e3/BusActivity;->setContentView(I)V

    .line 19
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Ledu/nctu/e3/BusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Ledu/nctu/e3/BusActivity;->busWeb:Landroid/webkit/WebView;

    .line 21
    :try_start_0
    invoke-virtual {p0}, Ledu/nctu/e3/BusActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "bus.html"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 22
    .local v8, is:Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v6, v0, [B

    .line 23
    .local v6, buffer:[B
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    .line 24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 25
    .local v2, htmlStr:Ljava/lang/String;
    iget-object v0, p0, Ledu/nctu/e3/BusActivity;->busWeb:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v2           #htmlStr:Ljava/lang/String;
    .end local v6           #buffer:[B
    .end local v8           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v7

    .line 28
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 35
    invoke-virtual {p0}, Ledu/nctu/e3/BusActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
