.class Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TeaHomeworkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TeaHomeworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StudentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field noStudents:Z

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

.field submit:Z

.field final synthetic this$0:Ledu/nctu/e3/TeaHomeworkActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/TeaHomeworkActivity;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter "submit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, students:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 118
    iput-object p2, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    .line 119
    iput-boolean p3, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->submit:Z

    .line 120
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->noStudents:Z

    .line 121
    iget-boolean v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->noStudents:Z

    if-eqz v1, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, noStudent:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    .line 124
    const-string v1, "Title"

    const v2, 0x7f0500a1

    invoke-virtual {p1, v2}, Ledu/nctu/e3/TeaHomeworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v0           #noStudent:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    .restart local v0       #noStudent:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v1, "Title"

    const v2, 0x7f0500a2

    invoke-virtual {p1, v2}, Ledu/nctu/e3/TeaHomeworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 146
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x0

    const/4 v8, -0x2

    const/high16 v7, -0x1

    const/high16 v6, 0x41c8

    .line 152
    iget-boolean v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->submit:Z

    if-eqz v4, :cond_1

    .line 153
    iget-boolean v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->noStudents:Z

    if-eqz v4, :cond_0

    .line 154
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v2, textView:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v5, 0x1030042

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 156
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "Title"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/16 v5, 0x96

    invoke-direct {v4, v8, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v2           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 163
    :cond_0
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-virtual {v4}, Ledu/nctu/e3/TeaHomeworkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 164
    .local v0, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090042

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    .local v1, name:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "Submiter"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v4, 0x7f090076

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 167
    .local v3, time:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "SubmitTime"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 168
    move-object p2, v0

    .end local v3           #time:Landroid/widget/TextView;
    :goto_1
    move-object v2, p2

    .line 187
    goto :goto_0

    .line 171
    .end local v0           #layout:Landroid/widget/LinearLayout;
    .end local v1           #name:Landroid/widget/TextView;
    :cond_1
    iget-boolean v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->noStudents:Z

    if-eqz v4, :cond_2

    .line 172
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    .restart local v2       #textView:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const v5, 0x1030042

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 174
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "Title"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/16 v5, 0x96

    invoke-direct {v4, v8, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 181
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-virtual {v4}, Ledu/nctu/e3/TeaHomeworkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030029

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 182
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090042

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    .restart local v1       #name:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "Submiter"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    move-object p2, v0

    goto :goto_1
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
    .line 193
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->submit:Z

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    const-class v2, Ledu/nctu/e3/HomeworkSubmittedFilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    iget-object v2, v2, Ledu/nctu/e3/TeaHomeworkActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v2, "HwkId"

    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->students:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "HwkId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Ledu/nctu/e3/TeaHomeworkActivity$StudentListAdapter;->this$0:Ledu/nctu/e3/TeaHomeworkActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/TeaHomeworkActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
