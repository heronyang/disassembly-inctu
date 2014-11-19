.class public Ledu/nctu/e3/LoginCurriculumActivity;
.super Landroid/app/Activity;
.source "LoginCurriculumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/LoginCurriculumActivity$ForgetPasswordTask;,
        Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;
    }
.end annotation


# static fields
.field public static final preference_Key_Account:Ljava/lang/String; = "account"

.field public static final preference_Key_Password:Ljava/lang/String; = "password"

.field public static final preference_Key_Remember:Ljava/lang/String; = "remember"


# instance fields
.field account:Landroid/widget/EditText;

.field handler:Landroid/os/Handler;

.field login:Landroid/widget/ImageButton;

.field offline:Landroid/widget/ImageButton;

.field password:Landroid/widget/EditText;

.field preferenceEditor:Landroid/content/SharedPreferences$Editor;

.field preferences:Landroid/content/SharedPreferences;

.field remember:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 136
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "remember"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->login:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->account:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, accountStr:Ljava/lang/String;
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, passwordStr:Ljava/lang/String;
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "account"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "password"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/LoginCurriculumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05000b

    invoke-virtual {p0, v4}, Ledu/nctu/e3/LoginCurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 100
    .end local v0           #accountStr:Ljava/lang/String;
    .end local v2           #passwordStr:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 83
    .restart local v0       #accountStr:Ljava/lang/String;
    .restart local v2       #passwordStr:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "account"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "password"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 90
    :cond_3
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "online_curriculum"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    new-instance v3, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;

    invoke-direct {v3, p0}, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;-><init>(Ledu/nctu/e3/LoginCurriculumActivity;)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "account"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    const/4 v5, 0x2

    const-string v6, "password"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ledu/nctu/e3/LoginCurriculumActivity$LoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 94
    .end local v0           #accountStr:Ljava/lang/String;
    .end local v2           #passwordStr:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->offline:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "online_curriculum"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object v3, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-class v3, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Ledu/nctu/e3/LoginCurriculumActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->setContentView(I)V

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LoginTicket"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->login:Landroid/widget/ImageButton;

    .line 50
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->offline:Landroid/widget/ImageButton;

    .line 51
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->offline:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->login:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->account:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->password:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Ledu/nctu/e3/LoginCurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->remember:Landroid/widget/CheckBox;

    .line 56
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->remember:Landroid/widget/CheckBox;

    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "remember"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 57
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->remember:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->account:Landroid/widget/EditText;

    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "account"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->password:Landroid/widget/EditText;

    iget-object v1, p0, Ledu/nctu/e3/LoginCurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "password"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/LoginCurriculumActivity;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 68
    invoke-virtual {p0}, Ledu/nctu/e3/LoginCurriculumActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
