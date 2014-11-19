.class Ledu/nctu/e3/ForumListActivity$ForumAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/ForumListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForumAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
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

.field noForums:Z

.field final synthetic this$0:Ledu/nctu/e3/ForumListActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/ForumListActivity;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, forums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 120
    iput-object p2, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->forums:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->noForums:Z

    .line 122
    iget-boolean v1, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->noForums:Z

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v0, noForum:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Title"

    const v2, 0x7f05008c

    invoke-virtual {p1, v2}, Ledu/nctu/e3/ForumListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v0           #noForum:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "postion"

    .prologue
    .line 137
    iget-object v0, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 152
    iget-boolean v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->noForums:Z

    if-eqz v3, :cond_0

    .line 153
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    const v4, 0x1030042

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 155
    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->forums:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    const/high16 v3, 0x41c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x96

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .end local v2           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 163
    :cond_0
    if-nez p2, :cond_1

    .line 164
    new-instance v0, Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;

    invoke-direct {v0, p0}, Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;-><init>(Ledu/nctu/e3/ForumListActivity$ForumAdapter;)V

    .line 165
    .local v0, holder:Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;
    iget-object v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    invoke-virtual {v3}, Ledu/nctu/e3/ForumListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030022

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 166
    .local v1, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f090042

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 167
    const v3, 0x7f09006a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;->count:Landroid/widget/TextView;

    .line 168
    move-object p2, v1

    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    .end local v0           #holder:Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;

    .line 172
    .restart local v0       #holder:Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;
    iget-object v4, v0, Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "Caption"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v4, v0, Ledu/nctu/e3/ForumListActivity$ForumAdapter$ViewHolder;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    const v6, 0x7f050046

    invoke-virtual {v3, v6}, Ledu/nctu/e3/ForumListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v6, "TopicCount"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p2

    .line 174
    goto :goto_0
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
    .line 181
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->noForums:Z

    if-nez v1, :cond_0

    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    const-class v2, Ledu/nctu/e3/TopicListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v2, v2, Ledu/nctu/e3/ForumListActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v2, v2, Ledu/nctu/e3/ForumListActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "ForumId"

    iget-object v1, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->forums:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "ForumId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v2, v2, Ledu/nctu/e3/ForumListActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "UserRole"

    iget-object v2, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    iget-object v2, v2, Ledu/nctu/e3/ForumListActivity;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Ledu/nctu/e3/ForumListActivity$ForumAdapter;->this$0:Ledu/nctu/e3/ForumListActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/ForumListActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
