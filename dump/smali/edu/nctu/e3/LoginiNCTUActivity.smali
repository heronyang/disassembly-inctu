.class public Ledu/nctu/e3/LoginiNCTUActivity;
.super Landroid/app/Activity;
.source "LoginiNCTUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/LoginiNCTUActivity$DownloadTask;,
        Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;,
        Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;
    }
.end annotation


# static fields
.field public static final fromCourseList:I = 0x0

.field public static final fromCurriculum:I = 0x1

.field public static final preference_Key_Account:Ljava/lang/String; = "account"

.field public static final preference_Key_Password:Ljava/lang/String; = "password"

.field public static final preference_Key_Remember:Ljava/lang/String; = "remember"


# instance fields
.field account:Landroid/widget/EditText;

.field contactUs:Landroid/widget/ImageButton;

.field forgetPassword:Landroid/widget/Button;

.field handler:Landroid/os/Handler;

.field login:Landroid/widget/ImageButton;

.field news:Landroid/widget/ImageButton;

.field newsContent:Landroid/widget/TextView;

.field password:Landroid/widget/EditText;

.field preferenceEditor:Landroid/content/SharedPreferences$Editor;

.field preferences:Landroid/content/SharedPreferences;

.field remember:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 163
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "remember"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->login:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->account:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, accountStr:Ljava/lang/String;
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, passwordStr:Ljava/lang/String;
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "account"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "password"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/LoginiNCTUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000b

    invoke-virtual {p0, v4}, Ledu/nctu/e3/LoginiNCTUActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 117
    .end local v0           #accountStr:Ljava/lang/String;
    .end local v2           #passwordStr:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 101
    .restart local v0       #accountStr:Ljava/lang/String;
    .restart local v2       #passwordStr:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "account"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "password"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 108
    :cond_3
    new-instance v3, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;

    invoke-direct {v3, p0}, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;-><init>(Ledu/nctu/e3/LoginiNCTUActivity;)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "account"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string v6, "password"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ledu/nctu/e3/LoginiNCTUActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 110
    .end local v0           #accountStr:Ljava/lang/String;
    .end local v2           #passwordStr:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->forgetPassword:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    new-instance v3, Landroid/content/Intent;

    const-class v4, Ledu/nctu/e3/ForgetPasswordActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Ledu/nctu/e3/LoginiNCTUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->contactUs:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-class v3, Ledu/nctu/e3/ContactUsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Ledu/nctu/e3/LoginiNCTUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 114
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Ledu/nctu/e3/LoginiNCTUActivity;->news:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    new-instance v3, Landroid/content/Intent;

    const-class v4, Ledu/nctu/e3/NewsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Ledu/nctu/e3/LoginiNCTUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v5}, Ledu/nctu/e3/LoginiNCTUActivity;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferences:Landroid/content/SharedPreferences;

    .line 57
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LoginTicket"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->login:Landroid/widget/ImageButton;

    .line 62
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->login:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->contactUs:Landroid/widget/ImageButton;

    .line 64
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->contactUs:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->remember:Landroid/widget/CheckBox;

    .line 66
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->remember:Landroid/widget/CheckBox;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "remember"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->account:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->password:Landroid/widget/EditText;

    .line 70
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->account:Landroid/widget/EditText;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "account"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->password:Landroid/widget/EditText;

    iget-object v1, p0, Ledu/nctu/e3/LoginiNCTUActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "password"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->forgetPassword:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->forgetPassword:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->news:Landroid/widget/ImageButton;

    .line 77
    iget-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->news:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->newsContent:Landroid/widget/TextView;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/LoginiNCTUActivity;->handler:Landroid/os/Handler;

    .line 80
    new-instance v0, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;-><init>(Ledu/nctu/e3/LoginiNCTUActivity;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ledu/nctu/e3/LoginiNCTUActivity$GetNewsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 86
    invoke-virtual {p0}, Ledu/nctu/e3/LoginiNCTUActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 234
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginiNCTUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    return-void
.end method
