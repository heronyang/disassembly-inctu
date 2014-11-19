.class public Ledu/nctu/e3/MemberActivity;
.super Landroid/app/Activity;
.source "MemberActivity.java"


# instance fields
.field memberView:Landroid/webkit/WebView;

.field userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v4}, Ledu/nctu/e3/MemberActivity;->requestWindowFeature(I)Z

    .line 23
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MemberActivity;->setContentView(I)V

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 25
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserRole"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/MemberActivity;->userRole:Ljava/lang/String;

    .line 28
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Ledu/nctu/e3/MemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Ledu/nctu/e3/MemberActivity;->memberView:Landroid/webkit/WebView;

    .line 29
    iget-object v0, p0, Ledu/nctu/e3/MemberActivity;->userRole:Ljava/lang/String;

    const-string v1, "stu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "member-stu.html"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 32
    .local v8, is:Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v6, v0, [B

    .line 33
    .local v6, buffer:[B
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    .line 34
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 35
    .local v2, s:Ljava/lang/String;
    const-string v0, "\u7cfb\u6240Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "DepartId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v0, "\u59d3\u540dStr"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v0, "\u500b\u4eba\u7db2\u5740Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v0, "\u8fa6\u516c\u5ba4Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "OfficeLab"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 39
    const-string v0, "\u6211\u7684\u66b1\u7a31Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "NickName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v0, "\u81ea\u6211\u4ecb\u7d39Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Introduce"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v0, p0, Ledu/nctu/e3/MemberActivity;->memberView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v2           #s:Ljava/lang/String;
    .end local v6           #buffer:[B
    .end local v8           #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v7

    .line 44
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v7           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Member.html"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 49
    .restart local v8       #is:Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v6, v0, [B

    .line 50
    .restart local v6       #buffer:[B
    invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I

    .line 51
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 52
    .restart local v2       #s:Ljava/lang/String;
    const-string v0, "\u7cfb\u6240Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "DepartId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v0, "\u59d3\u540dStr"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v0, "EmailStr"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "EMail"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v0, "MSNStr"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "MSNAccount"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string v0, "\u96fb\u8a71Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Tel"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v0, "\u624b\u6a5fStr"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Mobile"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v0, "\u500b\u4eba\u7db2\u5740Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 59
    const-string v0, "\u8fa6\u516c\u5ba4Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "OfficeLab"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v0, "\u6211\u7684\u66b1\u7a31Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "NickName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v0, "\u81ea\u6211\u4ecb\u7d39Str"

    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Introduce"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v0, p0, Ledu/nctu/e3/MemberActivity;->memberView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 63
    .end local v2           #s:Ljava/lang/String;
    .end local v6           #buffer:[B
    .end local v8           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 65
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 73
    invoke-virtual {p0}, Ledu/nctu/e3/MemberActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
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

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_0
    return v6

    .line 81
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MemberActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MemberActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MemberActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MemberActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x7f09007a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
