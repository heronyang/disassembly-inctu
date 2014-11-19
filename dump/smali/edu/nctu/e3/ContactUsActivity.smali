.class public Ledu/nctu/e3/ContactUsActivity;
.super Landroid/app/Activity;
.source "ContactUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;,
        Ledu/nctu/e3/ContactUsActivity$SendMailTask;
    }
.end annotation


# instance fields
.field contactInformation:Landroid/widget/EditText;

.field from:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field helpClasses:Ljava/util/ArrayList;
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

.field problemType:Ljava/lang/String;

.field problems:Landroid/widget/EditText;

.field replyMethod:Landroid/widget/Spinner;

.field replyMethodStr:Ljava/lang/String;

.field replyMethodStrs:[Ljava/lang/String;

.field send:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string v0, "1"

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->replyMethodStr:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 90
    iget-object v6, p0, Ledu/nctu/e3/ContactUsActivity;->send:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    iget-object v6, p0, Ledu/nctu/e3/ContactUsActivity;->from:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, fromStr:Ljava/lang/String;
    iget-object v6, p0, Ledu/nctu/e3/ContactUsActivity;->problems:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, content:Ljava/lang/String;
    iget-object v6, p0, Ledu/nctu/e3/ContactUsActivity;->contactInformation:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, replyData:Ljava/lang/String;
    iget-object v1, p0, Ledu/nctu/e3/ContactUsActivity;->problemType:Ljava/lang/String;

    .line 95
    .local v1, classId:Ljava/lang/String;
    iget-object v5, p0, Ledu/nctu/e3/ContactUsActivity;->replyMethodStr:Ljava/lang/String;

    .line 96
    .local v5, replyType:Ljava/lang/String;
    const-string v0, ""

    .line 97
    .local v0, accountId:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    :cond_0
    const v6, 0x7f050045

    invoke-virtual {p0, v6}, Ledu/nctu/e3/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 103
    .end local v0           #accountId:Ljava/lang/String;
    .end local v1           #classId:Ljava/lang/String;
    .end local v2           #content:Ljava/lang/String;
    .end local v3           #fromStr:Ljava/lang/String;
    .end local v4           #replyData:Ljava/lang/String;
    .end local v5           #replyType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 100
    .restart local v0       #accountId:Ljava/lang/String;
    .restart local v1       #classId:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v3       #fromStr:Ljava/lang/String;
    .restart local v4       #replyData:Ljava/lang/String;
    .restart local v5       #replyType:Ljava/lang/String;
    :cond_2
    new-instance v6, Ledu/nctu/e3/ContactUsActivity$SendMailTask;

    invoke-direct {v6, p0}, Ledu/nctu/e3/ContactUsActivity$SendMailTask;-><init>(Ledu/nctu/e3/ContactUsActivity;)V

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v8, 0x3

    aput-object v5, v7, v8

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const/4 v8, 0x5

    const-string v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ledu/nctu/e3/ContactUsActivity$SendMailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v4}, Ledu/nctu/e3/ContactUsActivity;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ContactUsActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->from:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->problems:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->replyMethod:Landroid/widget/Spinner;

    .line 47
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->contactInformation:Landroid/widget/EditText;

    .line 48
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->send:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f050033

    invoke-virtual {p0, v1}, Ledu/nctu/e3/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f050032

    invoke-virtual {p0, v1}, Ledu/nctu/e3/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->replyMethodStrs:[Ljava/lang/String;

    .line 51
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->replyMethod:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    iget-object v3, p0, Ledu/nctu/e3/ContactUsActivity;->replyMethodStrs:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 52
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->replyMethod:Landroid/widget/Spinner;

    new-instance v1, Ledu/nctu/e3/ContactUsActivity$1;

    invoke-direct {v1, p0}, Ledu/nctu/e3/ContactUsActivity$1;-><init>(Ledu/nctu/e3/ContactUsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/ContactUsActivity;->handler:Landroid/os/Handler;

    .line 77
    new-instance v0, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;-><init>(Ledu/nctu/e3/ContactUsActivity;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ledu/nctu/e3/ContactUsActivity$GetHelpClassTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 83
    invoke-virtual {p0}, Ledu/nctu/e3/ContactUsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 139
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    return-void
.end method
