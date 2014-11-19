.class public Ledu/nctu/e3/SendMailActivity;
.super Landroid/app/Activity;
.source "SendMailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/SendMailActivity$GetFromTask;,
        Ledu/nctu/e3/SendMailActivity$SendMailTask;
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field ccsChecks:[Z

.field ccsMail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field copies:Landroid/widget/EditText;

.field courseId:Ljava/lang/String;

.field from:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field members:[Ljava/lang/String;

.field others:Landroid/widget/EditText;

.field problems:Landroid/widget/EditText;

.field send:Landroid/widget/Button;

.field students:Ljava/util/ArrayList;
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

.field studentsSize:I

.field subject:Landroid/widget/EditText;

.field tas:Ljava/util/ArrayList;
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

.field tasSize:I

.field teachers:Ljava/util/ArrayList;
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

.field teachersSize:I

.field to:Landroid/widget/EditText;

.field tosChecks:[Z

.field tosMail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f050010

    const v7, 0x7f05000f

    const/4 v8, 0x0

    .line 125
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->send:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 126
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->tosMail:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->subject:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->problems:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    :cond_0
    const v5, 0x7f050045

    invoke-virtual {p0, v5}, Ledu/nctu/e3/SendMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v4, toStr:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->tosMail:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 133
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v1, ccStr:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->ccsMail:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_4

    .line 137
    new-instance v5, Ledu/nctu/e3/SendMailActivity$SendMailTask;

    invoke-direct {v5, p0}, Ledu/nctu/e3/SendMailActivity$SendMailTask;-><init>(Ledu/nctu/e3/SendMailActivity;)V

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Ledu/nctu/e3/SendMailActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Ledu/nctu/e3/SendMailActivity;->accountId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Ledu/nctu/e3/SendMailActivity;->others:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Ledu/nctu/e3/SendMailActivity;->subject:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Ledu/nctu/e3/SendMailActivity;->problems:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Ledu/nctu/e3/SendMailActivity;->courseId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    iget-object v8, p0, Ledu/nctu/e3/SendMailActivity;->userRole:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ledu/nctu/e3/SendMailActivity$SendMailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 131
    .end local v1           #ccStr:Ljava/lang/StringBuffer;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->tosMail:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 135
    .restart local v1       #ccStr:Ljava/lang/StringBuffer;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->ccsMail:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 139
    .end local v1           #ccStr:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v4           #toStr:Ljava/lang/StringBuffer;
    :cond_5
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->to:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 140
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->tosChecks:[Z

    if-eqz v5, :cond_1

    .line 141
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->tosChecks:[Z

    array-length v5, v5

    new-array v3, v5, [Z

    .line 142
    .local v3, temp:[Z
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v5, v3

    if-lt v2, v5, :cond_6

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->members:[Ljava/lang/String;

    new-instance v6, Ledu/nctu/e3/SendMailActivity$1;

    invoke-direct {v6, p0}, Ledu/nctu/e3/SendMailActivity$1;-><init>(Ledu/nctu/e3/SendMailActivity;)V

    invoke-virtual {v0, v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {p0, v7}, Ledu/nctu/e3/SendMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ledu/nctu/e3/SendMailActivity$2;

    invoke-direct {v6, p0, v3}, Ledu/nctu/e3/SendMailActivity$2;-><init>(Ledu/nctu/e3/SendMailActivity;[Z)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {p0, v9}, Ledu/nctu/e3/SendMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 142
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    :cond_6
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->tosChecks:[Z

    aget-boolean v5, v5, v2

    aput-boolean v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 180
    .end local v2           #i:I
    .end local v3           #temp:[Z
    :cond_7
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->copies:Landroid/widget/EditText;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->ccsChecks:[Z

    if-eqz v5, :cond_1

    .line 182
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->ccsChecks:[Z

    invoke-virtual {v5}, [Z->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    .line 183
    .restart local v3       #temp:[Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .restart local v0       #ab:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Ledu/nctu/e3/SendMailActivity;->members:[Ljava/lang/String;

    new-instance v6, Ledu/nctu/e3/SendMailActivity$3;

    invoke-direct {v6, p0}, Ledu/nctu/e3/SendMailActivity$3;-><init>(Ledu/nctu/e3/SendMailActivity;)V

    invoke-virtual {v0, v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {p0, v7}, Ledu/nctu/e3/SendMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ledu/nctu/e3/SendMailActivity$4;

    invoke-direct {v6, p0, v3}, Ledu/nctu/e3/SendMailActivity$4;-><init>(Ledu/nctu/e3/SendMailActivity;[Z)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {p0, v9}, Ledu/nctu/e3/SendMailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v3}, Ledu/nctu/e3/SendMailActivity;->requestWindowFeature(I)Z

    .line 57
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 59
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 61
    :cond_0
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->from:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->to:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity;->to:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->copies:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity;->copies:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->others:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->subject:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->problems:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->send:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity;->send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Ledu/nctu/e3/SendMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->loginTicket:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Ledu/nctu/e3/SendMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->courseId:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Ledu/nctu/e3/SendMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UserRole"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->userRole:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity;->userRole:Ljava/lang/String;

    const-string v1, "stu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->userRole:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Ledu/nctu/e3/SendMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->accountId:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->tosMail:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->ccsMail:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/SendMailActivity;->handler:Landroid/os/Handler;

    .line 79
    new-instance v0, Ledu/nctu/e3/SendMailActivity$GetFromTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/SendMailActivity$GetFromTask;-><init>(Ledu/nctu/e3/SendMailActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity;->accountId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ledu/nctu/e3/SendMailActivity$GetFromTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void

    .line 74
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 86
    invoke-virtual {p0}, Ledu/nctu/e3/SendMailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const v0, 0x7f09007a

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 88
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

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 120
    :goto_0
    return v6

    .line 95
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
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
    .line 278
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    return-void
.end method
