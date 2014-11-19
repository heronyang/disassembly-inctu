.class public Ledu/nctu/e3/AddReplyActivity;
.super Landroid/app/Activity;
.source "AddReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/AddReplyActivity$AddReplyTask;,
        Ledu/nctu/e3/AddReplyActivity$AttachFileTask;,
        Ledu/nctu/e3/AddReplyActivity$FileInformation;,
        Ledu/nctu/e3/AddReplyActivity$InitialTask;
    }
.end annotation


# static fields
.field private static final pick_file_request:I


# instance fields
.field accountId:Ljava/lang/String;

.field attachFile:Landroid/widget/Button;

.field content:Landroid/widget/EditText;

.field courseId:Ljava/lang/String;

.field fileInformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ledu/nctu/e3/AddReplyActivity$FileInformation;",
            ">;"
        }
    .end annotation
.end field

.field files:Landroid/widget/LinearLayout;

.field finish:Landroid/widget/Button;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field newTopicReplyId:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;

.field replier:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field replyId:Ljava/lang/String;

.field respondent:Landroid/widget/TextView;

.field topic:Landroid/widget/EditText;

.field topicId:Ljava/lang/String;

.field topicInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 183
    if-eqz p3, :cond_0

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, uri:Landroid/net/Uri;
    if-nez p1, :cond_0

    .line 189
    invoke-virtual {p0}, Ledu/nctu/e3/AddReplyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 190
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 191
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, filepath:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 194
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, filename:Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 198
    .local v12, fis:Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v6, v0, [B

    .line 199
    .local v6, bytes:[B
    invoke-virtual {v12, v6}, Ljava/io/FileInputStream;->read([B)I

    .line 200
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 201
    new-instance v13, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 202
    .local v13, medias:Ljava/lang/String;
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->fileInformations:Ljava/util/ArrayList;

    new-instance v2, Ledu/nctu/e3/AddReplyActivity$FileInformation;

    const-string v3, "jpg"

    invoke-direct {v2, p0, v10, v13, v3}, Ledu/nctu/e3/AddReplyActivity$FileInformation;-><init>(Ledu/nctu/e3/AddReplyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 204
    .local v14, textView:Landroid/widget/TextView;
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->files:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #bytes:[B
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #filename:Ljava/lang/String;
    .end local v11           #filepath:Ljava/lang/String;
    .end local v12           #fis:Ljava/io/FileInputStream;
    .end local v13           #medias:Ljava/lang/String;
    .end local v14           #textView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #filename:Ljava/lang/String;
    .restart local v11       #filepath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 208
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 211
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v3, p0, Ledu/nctu/e3/AddReplyActivity;->finish:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    iget-object v3, p0, Ledu/nctu/e3/AddReplyActivity;->topic:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, topicStr:Ljava/lang/String;
    iget-object v3, p0, Ledu/nctu/e3/AddReplyActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, contentStr:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    :cond_0
    const v3, 0x7f050045

    invoke-virtual {p0, v3}, Ledu/nctu/e3/AddReplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 140
    .end local v0           #contentStr:Ljava/lang/String;
    .end local v2           #topicStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 133
    .restart local v0       #contentStr:Ljava/lang/String;
    .restart local v2       #topicStr:Ljava/lang/String;
    :cond_2
    new-instance v3, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;

    invoke-direct {v3, p0}, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;-><init>(Ledu/nctu/e3/AddReplyActivity;)V

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Ledu/nctu/e3/AddReplyActivity;->loginTicket:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/nctu/e3/AddReplyActivity;->newTopicReplyId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Ledu/nctu/e3/AddReplyActivity;->topicId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Ledu/nctu/e3/AddReplyActivity;->replyId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Ledu/nctu/e3/AddReplyActivity;->accountId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v2, v4, v5

    const/4 v5, 0x6

    const-string v6, "\n"

    const-string v7, "<br>"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ledu/nctu/e3/AddReplyActivity$AddReplyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 135
    .end local v0           #contentStr:Ljava/lang/String;
    .end local v2           #topicStr:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Ledu/nctu/e3/AddReplyActivity;->attachFile:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, i:Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1, v6}, Ledu/nctu/e3/AddReplyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, v3}, Ledu/nctu/e3/AddReplyActivity;->requestWindowFeature(I)Z

    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->preferences:Landroid/content/SharedPreferences;

    .line 62
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "From"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 63
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 65
    :cond_0
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Ledu/nctu/e3/AddReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->loginTicket:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ledu/nctu/e3/AddReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TopicId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->topicId:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Ledu/nctu/e3/AddReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ReplyId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->replyId:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Ledu/nctu/e3/AddReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->accountId:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Ledu/nctu/e3/AddReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->courseId:Ljava/lang/String;

    .line 72
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->respondent:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->topic:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->content:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->files:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->attachFile:Landroid/widget/Button;

    .line 77
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->finish:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->finish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->attachFile:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->newTopicReplyId:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->fileInformations:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/AddReplyActivity;->handler:Landroid/os/Handler;

    .line 83
    new-instance v0, Ledu/nctu/e3/AddReplyActivity$InitialTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/AddReplyActivity$InitialTask;-><init>(Ledu/nctu/e3/AddReplyActivity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Ledu/nctu/e3/AddReplyActivity;->accountId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddReplyActivity$InitialTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 89
    invoke-virtual {p0}, Ledu/nctu/e3/AddReplyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 90
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

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    return v6

    .line 97
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
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
    .line 251
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    return-void
.end method
