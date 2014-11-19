.class Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CourseDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/CourseDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CourseDetailListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/CourseDetailActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/CourseDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    const-string v1, "stu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 119
    iget-object v4, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v4, v4, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    const-string v5, "stu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x4

    if-le p1, v4, :cond_0

    .line 120
    add-int/lit8 p1, p1, 0x1

    .line 122
    :cond_0
    iget-object v4, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v4}, Ledu/nctu/e3/CourseDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030020

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 123
    .local v3, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 124
    .local v2, img:Landroid/widget/ImageView;
    const v4, 0x7f090064

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, englishTitle:Landroid/widget/TextView;
    const v4, 0x7f090065

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    .local v0, chineseTitle:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    move-object p2, v3

    .line 165
    return-object p2

    .line 128
    :pswitch_0
    const/high16 v4, 0x7f02

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    const-string v4, "Announcements"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const-string v4, "(\u516c\u544a)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :pswitch_1
    const v4, 0x7f02000d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    const-string v4, "Documents"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const-string v4, "(\u6559\u6750)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :pswitch_2
    const v4, 0x7f020001

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    const-string v4, "Assignments"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string v4, "(\u4f5c\u696d)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :pswitch_3
    const v4, 0x7f02000c

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const-string v4, "Discussion"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const-string v4, "(\u8a0e\u8ad6)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :pswitch_4
    const v4, 0x7f020007

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    const-string v4, "E-Mail"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-string v4, "(\u5bc4\u9001\u90f5\u4ef6)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :pswitch_5
    const v4, 0x7f020028

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    const-string v4, "Score"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const-string v4, "(\u6210\u7e3e)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :pswitch_6
    const v4, 0x7f020021

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    const-string v4, "Members"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const-string v4, "(\u6210\u54e1\u540d\u55ae)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 173
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    const-string v2, "stu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-le p3, v1, :cond_0

    .line 174
    add-int/lit8 p3, p3, 0x1

    .line 176
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 178
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/AnnouncementsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "UserRole"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/MaterialsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "UserRole"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v1, v1, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    const-string v2, "stu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/HomeworksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/TeaHomeworksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 208
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/ForumListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "UserRole"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/SendMailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "UserRole"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 224
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/ScoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 231
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    const-class v2, Ledu/nctu/e3/MembersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "UserRole"

    iget-object v2, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    iget-object v2, v2, Ledu/nctu/e3/CourseDetailActivity;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Ledu/nctu/e3/CourseDetailActivity$CourseDetailListAdapter;->this$0:Ledu/nctu/e3/CourseDetailActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CourseDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
