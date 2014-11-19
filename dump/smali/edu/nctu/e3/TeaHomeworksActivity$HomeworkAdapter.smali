.class Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;
.super Landroid/widget/BaseAdapter;
.source "TeaHomeworksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TeaHomeworksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeworkAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final option_finish:I = 0x2

.field public static final option_notice:I = 0x3

.field public static final option_on:I = 0x0

.field public static final option_wait:I = 0x1


# instance fields
.field homeworks:Ljava/util/ArrayList;
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

.field noHomeworks:Z

.field final synthetic this$0:Ledu/nctu/e3/TeaHomeworksActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/TeaHomeworksActivity;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter
    .parameter "option"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, homeworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 287
    iput-object p2, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->homeworks:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->noHomeworks:Z

    .line 289
    iget-boolean v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->noHomeworks:Z

    if-eqz v1, :cond_0

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v0, noHomework:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    .line 304
    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v0           #noHomework:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 288
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 293
    .restart local v0       #noHomework:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v1, "Title"

    const v2, 0x7f050088

    invoke-virtual {p1, v2}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 296
    :pswitch_1
    const-string v1, "Title"

    const v2, 0x7f050089

    invoke-virtual {p1, v2}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :pswitch_2
    const-string v1, "Title"

    const v2, 0x7f05008a

    invoke-virtual {p1, v2}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 302
    :pswitch_3
    const-string v1, "Title"

    const v2, 0x7f05008b

    invoke-virtual {p1, v2}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->homeworks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 316
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->homeworks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 322
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 332
    iget-boolean v4, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->noHomeworks:Z

    if-eqz v4, :cond_0

    .line 333
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 334
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    const v5, 0x1030042

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 335
    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->homeworks:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "Title"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 338
    const/high16 v4, 0x41c8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 339
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x96

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .end local v3           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v3

    .line 343
    :cond_0
    if-nez p2, :cond_1

    .line 344
    new-instance v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;

    invoke-direct {v0, p0}, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;-><init>(Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;)V

    .line 345
    .local v0, holder:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    invoke-virtual {v4}, Ledu/nctu/e3/TeaHomeworksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 346
    .local v1, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090042

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 347
    const v4, 0x7f090078

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;->handcount:Landroid/widget/TextView;

    .line 348
    const v4, 0x7f090061

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 349
    move-object p2, v1

    .line 350
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 352
    .end local v0           #holder:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;

    .line 353
    .restart local v0       #holder:Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->homeworks:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 354
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string v4, "DisplayName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v5, v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;->handcount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    const v7, 0x7f05001b

    invoke-virtual {v6, v7}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v4, "SubmitCount"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    const v7, 0x7f050052

    invoke-virtual {v6, v7}, Ledu/nctu/e3/TeaHomeworksActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v4, "NoSubmitCount"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v5, v0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "BeginDate"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "~"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v4, "EndDate"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, p2

    .line 357
    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 363
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->noHomeworks:Z

    if-nez v1, :cond_0

    .line 364
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    const-class v2, Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworksActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworksActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworksActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v2, "HomeworkId"

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->homeworks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "HomeworkId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworksActivity$HomeworkAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/TeaHomeworksActivity;->startActivity(Landroid/content/Intent;)V

    .line 371
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
