.class public Ledu/nctu/e3/AddTopicActivity;
.super Landroid/app/Activity;
.source "AddTopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/AddTopicActivity$AddTopicTask;,
        Ledu/nctu/e3/AddTopicActivity$AttachFileTask;,
        Ledu/nctu/e3/AddTopicActivity$FileInformation;,
        Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final pick_file_request:I


# instance fields
.field accountId:Ljava/lang/String;

.field beginDate:Landroid/widget/EditText;

.field calendar:Ljava/util/Calendar;

.field content:Landroid/widget/EditText;

.field courseId:Ljava/lang/String;

.field endDate:Landroid/widget/EditText;

.field fileInformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ledu/nctu/e3/AddTopicActivity$FileInformation;",
            ">;"
        }
    .end annotation
.end field

.field files:Landroid/widget/LinearLayout;

.field finish:Landroid/widget/Button;

.field forum:Landroid/widget/Spinner;

.field forumId:Ljava/lang/String;

.field forums:Ljava/util/ArrayList;
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

.field forumsList:[Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field loginTicket:Ljava/lang/String;

.field newTopicId:Ljava/lang/String;

.field pickFile:Landroid/widget/Button;

.field topic:Landroid/widget/EditText;

.field unit:Landroid/widget/Spinner;

.field unitId:Ljava/lang/String;

.field units:Ljava/util/ArrayList;
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

.field unitsList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static compareDate(Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 320
    const-string v12, "-"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, begintoks:[Ljava/lang/String;
    const-string v12, "-"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 322
    .local v11, endtoks:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 323
    .local v4, beginYear:I
    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 324
    .local v3, beginMonth:I
    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 325
    .local v2, beginDay:I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 326
    .local v10, endYear:I
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 327
    .local v9, endMonth:I
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 328
    .local v8, endDay:I
    mul-int/lit16 v12, v4, 0x16d

    mul-int/lit8 v13, v3, 0x1f

    add-int/2addr v12, v13

    add-int/2addr v12, v2

    int-to-long v0, v12

    .line 329
    .local v0, beginCounter:J
    mul-int/lit16 v12, v10, 0x16d

    mul-int/lit8 v13, v9, 0x1f

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    int-to-long v6, v12

    .line 330
    .local v6, endCounter:J
    cmp-long v12, v0, v6

    if-gez v12, :cond_0

    const/4 v12, -0x1

    .line 332
    :goto_0
    return v12

    .line 331
    :cond_0
    cmp-long v12, v0, v6

    if-lez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 271
    if-eqz p3, :cond_0

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, uri:Landroid/net/Uri;
    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p0}, Ledu/nctu/e3/AddTopicActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 278
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 279
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 280
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 281
    .local v11, filepath:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 282
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, filename:Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 286
    .local v12, fis:Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v6, v0, [B

    .line 287
    .local v6, bytes:[B
    invoke-virtual {v12, v6}, Ljava/io/FileInputStream;->read([B)I

    .line 288
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 289
    new-instance v13, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 290
    .local v13, medias:Ljava/lang/String;
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->fileInformations:Ljava/util/ArrayList;

    new-instance v2, Ledu/nctu/e3/AddTopicActivity$FileInformation;

    const-string v3, "jpg"

    invoke-direct {v2, p0, v10, v13, v3}, Ledu/nctu/e3/AddTopicActivity$FileInformation;-><init>(Ledu/nctu/e3/AddTopicActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v14, textView:Landroid/widget/TextView;
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->files:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
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

    .line 294
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #filename:Ljava/lang/String;
    .restart local v11       #filepath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 296
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 299
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->beginDate:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Ledu/nctu/e3/AddTopicActivity$1;

    invoke-direct {v2, p0}, Ledu/nctu/e3/AddTopicActivity$1;-><init>(Ledu/nctu/e3/AddTopicActivity;)V

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 143
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 152
    .local v0, dialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 181
    .end local v0           #dialog:Landroid/app/DatePickerDialog;
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->endDate:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Ledu/nctu/e3/AddTopicActivity$2;

    invoke-direct {v2, p0}, Ledu/nctu/e3/AddTopicActivity$2;-><init>(Ledu/nctu/e3/AddTopicActivity;)V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 154
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 163
    .restart local v0       #dialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 164
    .end local v0           #dialog:Landroid/app/DatePickerDialog;
    :cond_2
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->pickFile:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v9, i:Landroid/content/Intent;
    const-string v1, "image/jpg"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v9, v4}, Ledu/nctu/e3/AddTopicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 168
    .end local v9           #i:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->finish:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->topic:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 170
    .local v10, topicNameStr:Ljava/lang/String;
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->beginDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, beginDateStr:Ljava/lang/String;
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->endDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, endDateStr:Ljava/lang/String;
    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, contentStr:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->unitId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ledu/nctu/e3/AddTopicActivity;->forumId:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 174
    :cond_4
    const v1, 0x7f050045

    invoke-virtual {p0, v1}, Ledu/nctu/e3/AddTopicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 175
    :cond_5
    invoke-static {v6, v8}, Ledu/nctu/e3/AddTopicActivity;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    .line 176
    const v1, 0x7f0500a3

    invoke-virtual {p0, v1}, Ledu/nctu/e3/AddTopicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 178
    :cond_6
    new-instance v1, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;

    invoke-direct {v1, p0}, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;-><init>(Ledu/nctu/e3/AddTopicActivity;)V

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity;->loginTicket:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity;->newTopicId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity;->courseId:Ljava/lang/String;

    aput-object v3, v2, v11

    const/4 v3, 0x3

    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity;->accountId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Ledu/nctu/e3/AddTopicActivity;->unitId:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Ledu/nctu/e3/AddTopicActivity;->forumId:Ljava/lang/String;

    aput-object v3, v2, v12

    const/4 v3, 0x6

    aput-object v6, v2, v3

    const/4 v3, 0x7

    aput-object v8, v2, v3

    const/16 v3, 0x8

    aput-object v10, v2, v3

    const/16 v3, 0x9

    const-string v4, "\n"

    const-string v5, "<br>"

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ledu/nctu/e3/AddTopicActivity$AddTopicTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v3}, Ledu/nctu/e3/AddTopicActivity;->requestWindowFeature(I)Z

    .line 72
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "From"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 74
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 76
    :cond_0
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->topic:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->unit:Landroid/widget/Spinner;

    .line 78
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->forum:Landroid/widget/Spinner;

    .line 79
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->beginDate:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->endDate:Landroid/widget/EditText;

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->calendar:Ljava/util/Calendar;

    .line 82
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->files:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->beginDate:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->endDate:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->beginDate:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->endDate:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->content:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->pickFile:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->pickFile:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->finish:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->finish:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Ledu/nctu/e3/AddTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LoginTicket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->loginTicket:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Ledu/nctu/e3/AddTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CourseId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->courseId:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Ledu/nctu/e3/AddTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AccountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->accountId:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->newTopicId:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->fileInformations:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;

    invoke-direct {v0, p0}, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;-><init>(Ledu/nctu/e3/AddTopicActivity;)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->loginTicket:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Ledu/nctu/e3/AddTopicActivity;->courseId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ledu/nctu/e3/AddTopicActivity$GetBasicDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 103
    invoke-virtual {p0}, Ledu/nctu/e3/AddTopicActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->forum:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->forums:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "ForumId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->forumId:Ljava/lang/String;

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->unit:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->units:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "TreeNodeId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ledu/nctu/e3/AddTopicActivity;->unitId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x1000

    const/high16 v4, 0x400

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    return v6

    .line 111
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
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
    .line 317
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 318
    return-void
.end method
