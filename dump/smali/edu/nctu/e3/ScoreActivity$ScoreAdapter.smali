.class Ledu/nctu/e3/ScoreActivity$ScoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/ScoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScoreAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/ScoreActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ScoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter;->this$0:Ledu/nctu/e3/ScoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter;->this$0:Ledu/nctu/e3/ScoreActivity;

    iget-object v0, v0, Ledu/nctu/e3/ScoreActivity;->scores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter;->this$0:Ledu/nctu/e3/ScoreActivity;

    iget-object v0, v0, Ledu/nctu/e3/ScoreActivity;->scores:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    new-instance v0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;

    invoke-direct {v0, p0}, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;-><init>(Ledu/nctu/e3/ScoreActivity$ScoreAdapter;)V

    .line 137
    .local v0, holder:Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;
    iget-object v2, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter;->this$0:Ledu/nctu/e3/ScoreActivity;

    invoke-virtual {v2}, Ledu/nctu/e3/ScoreActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 138
    .local v1, layout:Landroid/widget/LinearLayout;
    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;->displayName:Landroid/widget/TextView;

    .line 139
    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;->score:Landroid/widget/TextView;

    .line 140
    move-object p2, v1

    .line 141
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    .end local v0           #holder:Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;

    .line 144
    .restart local v0       #holder:Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;
    iget-object v3, v0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;->displayName:Landroid/widget/TextView;

    iget-object v2, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter;->this$0:Ledu/nctu/e3/ScoreActivity;

    iget-object v2, v2, Ledu/nctu/e3/ScoreActivity;->scores:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "DisplayName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, v0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;->score:Landroid/widget/TextView;

    iget-object v2, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter;->this$0:Ledu/nctu/e3/ScoreActivity;

    iget-object v2, v2, Ledu/nctu/e3/ScoreActivity;->scores:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "Score3"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter;->this$0:Ledu/nctu/e3/ScoreActivity;

    iget-object v2, v2, Ledu/nctu/e3/ScoreActivity;->scores:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 147
    const-string v2, "#FFA858"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    :goto_0
    return-object p2

    .line 149
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
