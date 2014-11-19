.class Ledu/nctu/e3/TopicListActivity$TopicListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopicListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopicListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field noTopics:Z

.field final synthetic this$0:Ledu/nctu/e3/TopicListActivity;

.field topics:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>(Ledu/nctu/e3/TopicListActivity;Ljava/util/ArrayList;)V
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
    .line 136
    .local p2, topics:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 137
    iput-object p2, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->noTopics:Z

    .line 139
    iget-boolean v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->noTopics:Z

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v0, noTopic:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Title"

    const v2, 0x7f05008d

    invoke-virtual {p1, v2}, Ledu/nctu/e3/TopicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v0           #noTopic:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 154
    iget-object v0, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 170
    iget-boolean v4, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->noTopics:Z

    if-eqz v4, :cond_0

    .line 171
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    const v5, 0x1030042

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 173
    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v4, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "Title"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    const/high16 v4, 0x41c8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x96

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    .end local v3           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v3

    .line 181
    :cond_0
    if-nez p2, :cond_1

    .line 182
    new-instance v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;-><init>(Ledu/nctu/e3/TopicListActivity$TopicListAdapter;)V

    .line 183
    .local v0, holder:Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;
    iget-object v4, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    invoke-virtual {v4}, Ledu/nctu/e3/TopicListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 184
    .local v1, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090042

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 185
    const v4, 0x7f090061

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 186
    const v4, 0x7f090079

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->lastPost:Landroid/widget/TextView;

    .line 187
    move-object p2, v1

    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    .end local v0           #holder:Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;

    .line 191
    .restart local v0       #holder:Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;
    iget-object v4, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 192
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string v4, "Caption"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v5, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->date:Landroid/widget/TextView;

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

    .line 194
    const-string v4, "LastPostDate"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 195
    iget-object v4, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->lastPost:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v5, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->lastPost:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "LastPostDate"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " by "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v4, "LastPostName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move-object v3, p2

    .line 201
    goto/16 :goto_0

    .line 198
    :cond_2
    iget-object v4, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->lastPost:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v4, v0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->lastPost:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

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
    .line 208
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->noTopics:Z

    if-nez v1, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    const-class v2, Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v2, v2, Ledu/nctu/e3/TopicListActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "AccountId"

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v2, v2, Ledu/nctu/e3/TopicListActivity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v2, "TopicId"

    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "TopicId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v2, "ReplyId"

    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "ReplyId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    iget-object v2, v2, Ledu/nctu/e3/TopicListActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v2, "TreeNodeId"

    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "TreeNodeId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter;->this$0:Ledu/nctu/e3/TopicListActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/TopicListActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
