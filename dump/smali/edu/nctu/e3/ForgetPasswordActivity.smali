.class public Ledu/nctu/e3/ForgetPasswordActivity;
.super Landroid/app/Activity;
.source "ForgetPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;
    }
.end annotation


# instance fields
.field account:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field hint:Landroid/widget/TextView;

.field send:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 66
    iget-object v2, p0, Ledu/nctu/e3/ForgetPasswordActivity;->send:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Ledu/nctu/e3/ForgetPasswordActivity;->account:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, result:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const-string v2, "\u60a8\u6709\u8cc7\u6599\u5c1a\u672a\u8f38\u5165"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 87
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u6ce8\u610f"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    const-string v2, "\u7cfb\u7d71\u5c07\u5bc4\u51fa\u4e00\u7d44\u65b0\u5bc6\u78bc\u81f3\u60a8\u7684\u4fe1\u7bb1\uff1f"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const v2, 0x7f05000f

    invoke-virtual {p0, v2}, Ledu/nctu/e3/ForgetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ledu/nctu/e3/ForgetPasswordActivity$1;

    invoke-direct {v3, p0, v1}, Ledu/nctu/e3/ForgetPasswordActivity$1;-><init>(Ledu/nctu/e3/ForgetPasswordActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    const v2, 0x7f050010

    invoke-virtual {p0, v2}, Ledu/nctu/e3/ForgetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ledu/nctu/e3/ForgetPasswordActivity;->requestWindowFeature(I)Z

    .line 34
    const v4, 0x7f03000b

    invoke-virtual {p0, v4}, Ledu/nctu/e3/ForgetPasswordActivity;->setContentView(I)V

    .line 35
    const v4, 0x7f090023

    invoke-virtual {p0, v4}, Ledu/nctu/e3/ForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Ledu/nctu/e3/ForgetPasswordActivity;->send:Landroid/widget/Button;

    .line 36
    iget-object v4, p0, Ledu/nctu/e3/ForgetPasswordActivity;->send:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v4, 0x7f09003f

    invoke-virtual {p0, v4}, Ledu/nctu/e3/ForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Ledu/nctu/e3/ForgetPasswordActivity;->account:Landroid/widget/EditText;

    .line 38
    const v4, 0x7f090040

    invoke-virtual {p0, v4}, Ledu/nctu/e3/ForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Ledu/nctu/e3/ForgetPasswordActivity;->hint:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Ledu/nctu/e3/ForgetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f04

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 40
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v0, bs:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 44
    .local v2, i:I
    :goto_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 52
    .end local v2           #i:I
    :goto_1
    iget-object v4, p0, Ledu/nctu/e3/ForgetPasswordActivity;->hint:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Ledu/nctu/e3/ForgetPasswordActivity;->handler:Landroid/os/Handler;

    .line 54
    return-void

    .line 45
    .restart local v2       #i:I
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 48
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 59
    invoke-virtual {p0}, Ledu/nctu/e3/ForgetPasswordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method
