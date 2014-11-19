.class public Ledu/nctu/e3/AddAnnouncementActivity;
.super Landroid/app/Activity;
.source "AddAnnouncementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field accountId:Ljava/lang/String;

.field beginDate:Landroid/widget/EditText;

.field bulType:Ljava/lang/String;

.field content:Landroid/widget/EditText;

.field courseId:Ljava/lang/String;

.field endDate:Landroid/widget/EditText;

.field finish:Landroid/widget/Button;

.field handler:Landroid/os/Handler;

.field inform:Landroid/widget/Spinner;

.field loginTicket:Ljava/lang/String;

.field name:Landroid/widget/EditText;

.field notify:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;

.field type:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const-string v0, "1"

    iput-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity;->bulType:Ljava/lang/String;

    .line 44
    const-string v0, "0"

    iput-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity;->notify:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static compareDate(Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 205
    const-string v12, "-"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, begintoks:[Ljava/lang/String;
    const-string v12, "-"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, endtoks:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 208
    .local v4, beginYear:I
    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, beginMonth:I
    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, beginDay:I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 211
    .local v10, endYear:I
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 212
    .local v9, endMonth:I
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 213
    .local v8, endDay:I
    mul-int/lit16 v12, v4, 0x16d

    mul-int/lit8 v13, v3, 0x1f

    add-int/2addr v12, v13

    add-int/2addr v12, v2

    int-to-long v0, v12

    .line 214
    .local v0, beginCounter:J
    mul-int/lit16 v12, v10, 0x16d

    mul-int/lit8 v13, v9, 0x1f

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    int-to-long v6, v12

    .line 215
    .local v6, endCounter:J
    cmp-long v12, v0, v6

    if-gez v12, :cond_0

    const/4 v12, -0x1

    .line 217
    :goto_0
    return v12

    .line 216
    :cond_0
    cmp-long v12, v0, v6

    if-lez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .parameter "v"

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/AddAnnouncementActivity;->beginDate:Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    new-instance v1, Landroid/app/DatePickerDialog;

    new-instance v3, Ledu/nctu/e3/AddAnnouncementActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ledu/nctu/e3/AddAnnouncementActivity$1;-><init>(Ledu/nctu/e3/AddAnnouncementActivity;)V

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v2, p0

    .line 135
    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 144
    .local v1, dialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    .line 179
    .end local v1           #dialog:Landroid/app/DatePickerDialog;
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/AddAnnouncementActivity;->endDate:Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v11, v2, 0x1

    .line 147
    .local v11, nowMonth:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 149
    .local v12, nowYear:I
    const/4 v2, 0x2

    if-gt v11, v2, :cond_2

    .line 150
    move v4, v12

    .local v4, endYear:I
    const/4 v5, 0x2

    .local v5, endMonth:I
    const/16 v6, 0x1c

    .line 156
    .local v6, endDay:I
    :goto_1
    new-instance v1, Landroid/app/DatePickerDialog;

    new-instance v3, Ledu/nctu/e3/AddAnnouncementActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ledu/nctu/e3/AddAnnouncementActivity$2;-><init>(Ledu/nctu/e3/AddAnnouncementActivity;)V

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 165
    .restart local v1       #dialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 151
    .end local v1           #dialog:Landroid/app/DatePickerDialog;
    .end local v4           #endYear:I
    .end local v5           #endMonth:I
    .end local v6           #endDay:I
    :cond_2
    const/4 v2, 0x7

    if-gt v11, v2, :cond_3

    .line 152
    move v4, v12

    .restart local v4       #endYear:I
    const/4 v5, 0x7

    .restart local v5       #endMonth:I
    const/16 v6, 0x1f

    .line 153
    .restart local v6       #endDay:I
    goto :goto_1

    .line 154
    .end local v4           #endYear:I
    .end local v5           #endMonth:I
    .end local v6           #endDay:I
    :cond_3
    add-int/lit8 v4, v12, 0x1

    .restart local v4       #endYear:I
    const/4 v5, 0x2

    .restart local v5       #endMonth:I
    const/16 v6, 0x1c

    .restart local v6       #endDay:I
    goto :goto_1

    .line 166
    .end local v4           #endYear:I
    .end local v5           #endMonth:I
    .end local v6           #endDay:I
    .end local v11           #nowMonth:I
    .end local v12           #nowYear:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/AddAnnouncementActivity;->finish:Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/AddAnnouncementActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, nameStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/AddAnnouncementActivity;->beginDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, beginDateStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/AddAnnouncementActivity;->endDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, endDateStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/AddAnnouncementActivity;->content:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, contentStr:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 172
    :cond_5
    const v2, 0x7f050045

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 173
    :cond_6
    invoke-static {v7, v9}, Ledu/nctu/e3/AddAnnouncementActivity;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7

    .line 174
    const v2, 0x7f0500a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 176
    :cond_7
    new-instance v2, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;-><init>(Ledu/nctu/e3/AddAnnouncementActivity;)V

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/AddAnnouncementActivity;->loginTicket:Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/AddAnnouncementActivity;->courseId:Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/AddAnnouncementActivity;->accountId:Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/AddAnnouncementActivity;->bulType:Ljava/lang/String;

    aput-object v14, v3, v13

    const/4 v13, 0x4

    aput-object v10, v3, v13

    const/4 v13, 0x5

    const-string v14, "\n"

    const-string v15, "<br>"

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v13

    const/4 v13, 0x6

    aput-object v7, v3, v13

    const/4 v13, 0x7

    aput-object v9, v3, v13

    const/16 v13, 0x8

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/nctu/e3/AddAnnouncementActivity;->notify:Ljava/lang/String;

    aput-object v14, v3, v13

    invoke-virtual {v2, v3}, Ledu/nctu/e3/AddAnnouncementActivity$AddAnnouncementTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->requestWindowFeature(I)Z

    .line 54
    const/high16 v7, 0x7f03

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->preferences:Landroid/content/SharedPreferences;

    .line 56
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "From"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 57
    const/high16 v7, 0x7f09

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v8, 0x7f02000b

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 59
    :cond_0
    const v7, 0x7f090003

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->type:Landroid/widget/Spinner;

    .line 60
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const v8, 0x7f050037

    invoke-virtual {p0, v8}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const v8, 0x7f050038

    invoke-virtual {p0, v8}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 61
    .local v6, types:[Ljava/lang/String;
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->type:Landroid/widget/Spinner;

    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090009

    invoke-direct {v8, p0, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 62
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->type:Landroid/widget/Spinner;

    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 63
    const v7, 0x7f090005

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->name:Landroid/widget/EditText;

    .line 64
    const v7, 0x7f090007

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->content:Landroid/widget/EditText;

    .line 65
    const v7, 0x7f090009

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->beginDate:Landroid/widget/EditText;

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 67
    .local v4, nowMonth:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 68
    .local v5, nowYear:I
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->beginDate:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v7, 0x2

    if-gt v4, v7, :cond_1

    .line 71
    move v2, v5

    .local v2, endYear:I
    const/4 v1, 0x2

    .local v1, endMonth:I
    const/16 v0, 0x1c

    .line 77
    .local v0, endDay:I
    :goto_0
    const v7, 0x7f09000b

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->endDate:Landroid/widget/EditText;

    .line 78
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->endDate:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v7, 0x7f09000d

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->inform:Landroid/widget/Spinner;

    .line 80
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const v8, 0x7f0500ad

    invoke-virtual {p0, v8}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const v8, 0x7f050050

    invoke-virtual {p0, v8}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const v8, 0x7f050051

    invoke-virtual {p0, v8}, Ledu/nctu/e3/AddAnnouncementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 81
    .local v3, informs:[Ljava/lang/String;
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->inform:Landroid/widget/Spinner;

    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090009

    invoke-direct {v8, p0, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 82
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->inform:Landroid/widget/Spinner;

    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    const v7, 0x7f09000e

    invoke-virtual {p0, v7}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->finish:Landroid/widget/Button;

    .line 84
    invoke-virtual {p0}, Ledu/nctu/e3/AddAnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "LoginTicket"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->loginTicket:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Ledu/nctu/e3/AddAnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "CourseId"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->courseId:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Ledu/nctu/e3/AddAnnouncementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "AccountId"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->accountId:Ljava/lang/String;

    .line 87
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->beginDate:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->endDate:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->finish:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Ledu/nctu/e3/AddAnnouncementActivity;->handler:Landroid/os/Handler;

    .line 91
    return-void

    .line 72
    .end local v0           #endDay:I
    .end local v1           #endMonth:I
    .end local v2           #endYear:I
    .end local v3           #informs:[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x7

    if-gt v4, v7, :cond_2

    .line 73
    move v2, v5

    .restart local v2       #endYear:I
    const/4 v1, 0x7

    .restart local v1       #endMonth:I
    const/16 v0, 0x1f

    .line 74
    .restart local v0       #endDay:I
    goto/16 :goto_0

    .line 75
    .end local v0           #endDay:I
    .end local v1           #endMonth:I
    .end local v2           #endYear:I
    :cond_2
    add-int/lit8 v2, v5, 0x1

    .restart local v2       #endYear:I
    const/4 v1, 0x2

    .restart local v1       #endMonth:I
    const/16 v0, 0x1c

    .restart local v0       #endDay:I
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 96
    invoke-virtual {p0}, Ledu/nctu/e3/AddAnnouncementActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 224
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity;->type:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity;->bulType:Ljava/lang/String;

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity;->inform:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/nctu/e3/AddAnnouncementActivity;->notify:Ljava/lang/String;

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
    .line 235
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

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    return v6

    .line 104
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "From"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddAnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddAnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddAnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddAnnouncementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
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
    .line 202
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/AddAnnouncementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    return-void
.end method
