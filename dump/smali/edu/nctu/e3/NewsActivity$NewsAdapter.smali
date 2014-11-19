.class Ledu/nctu/e3/NewsActivity$NewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/NewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/NewsActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/NewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v0, v0, Ledu/nctu/e3/NewsActivity;->news:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v0, v0, Ledu/nctu/e3/NewsActivity;->news:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    new-instance v2, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;

    invoke-direct {v2, p0}, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;-><init>(Ledu/nctu/e3/NewsActivity$NewsAdapter;)V

    .line 98
    .local v2, viewHolder:Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;
    iget-object v3, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    invoke-virtual {v3}, Ledu/nctu/e3/NewsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 99
    .local v0, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f090005

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 100
    const v3, 0x7f09006b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;->clickableIndicator:Landroid/widget/ImageView;

    .line 101
    move-object p2, v0

    .line 102
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .end local v0           #layout:Landroid/widget/LinearLayout;
    .end local v2           #viewHolder:Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;

    .line 105
    .restart local v2       #viewHolder:Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;
    iget-object v4, v2, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v3, v3, Ledu/nctu/e3/NewsActivity;->news:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "\u6a19\u984c"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v3, v3, Ledu/nctu/e3/NewsActivity;->news:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 107
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "AttachFileCount"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\u5167\u6587"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "athFileName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    :cond_1
    iget-object v3, v2, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;->clickableIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :goto_0
    return-object p2

    .line 110
    :cond_2
    iget-object v3, v2, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;->clickableIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 119
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    iget-object v2, v2, Ledu/nctu/e3/NewsActivity;->news:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 120
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "AttachFileCount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u5167\u6587"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    const-class v3, Ledu/nctu/e3/NewsDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "NewsId"

    const-string v2, "NewsId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "AttachFileCount"

    const-string v2, "AttachFileCount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    const-string v3, "Title"

    const-string v2, "\u6a19\u984c"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v3, "Content"

    const-string v2, "\u5167\u6587"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    invoke-virtual {v2, v0}, Ledu/nctu/e3/NewsActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v2, "athFileName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    new-instance v3, Ledu/nctu/e3/NewsActivity$DownloadTask;

    iget-object v2, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter;->this$0:Ledu/nctu/e3/NewsActivity;

    invoke-direct {v3, v2}, Ledu/nctu/e3/NewsActivity$DownloadTask;-><init>(Ledu/nctu/e3/NewsActivity;)V

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v2, "athFileUrl"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v5, Ledu/nctu/e3/MainActivity;->appFolder:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string v2, "athFileName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ledu/nctu/e3/NewsActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    :cond_2
    return-void
.end method
