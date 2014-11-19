.class Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReplysAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/TopicDetailActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v0, v0, Ledu/nctu/e3/TopicDetailActivity;->replys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v0, v0, Ledu/nctu/e3/TopicDetailActivity;->topicInfo:Ljava/util/HashMap;

    .line 177
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v0, v0, Ledu/nctu/e3/TopicDetailActivity;->replys:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 184
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 199
    if-nez p2, :cond_0

    .line 200
    new-instance v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;

    invoke-direct {v4, p0}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;-><init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)V

    .line 201
    .local v4, holder:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-virtual {v11}, Ledu/nctu/e3/TopicDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03002a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 202
    .local v7, layout:Landroid/widget/LinearLayout;
    const v11, 0x7f090005

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 203
    const v11, 0x7f090072

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->timePoster:Landroid/widget/TextView;

    .line 204
    const v11, 0x7f090007

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 205
    const v11, 0x7f09001a

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->fileLayout:Landroid/widget/LinearLayout;

    .line 206
    const v11, 0x7f090073

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->reply:Landroid/widget/Button;

    .line 207
    const v11, 0x7f090074

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->delete:Landroid/widget/Button;

    .line 208
    const v11, 0x7f090071

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->titleBar:Landroid/widget/LinearLayout;

    .line 209
    move-object/from16 p2, v7

    .line 210
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    .end local v4           #holder:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;
    .end local v7           #layout:Landroid/widget/LinearLayout;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;

    .line 213
    .restart local v4       #holder:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/high16 v12, -0x100

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->timePoster:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->delete:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    if-nez p1, :cond_3

    .line 218
    iget-object v12, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicInfo:Ljava/util/HashMap;

    const-string v13, "Caption"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v12, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->timePoster:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicInfo:Ljava/util/HashMap;

    const-string v14, "PostDate"

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " by "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicInfo:Ljava/util/HashMap;

    const-string v14, "Poster"

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v12, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->content:Landroid/widget/TextView;

    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicInfo:Ljava/util/HashMap;

    const-string v13, "Content"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicInfo:Ljava/util/HashMap;

    const-string v12, "TopicId"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 222
    .local v10, topicId:Ljava/lang/String;
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->reply:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->titleBar:Landroid/widget/LinearLayout;

    const-string v12, "#FF8000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 224
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->reply:Landroid/widget/Button;

    new-instance v12, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;

    invoke-direct {v12, p0, v10}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$1;-><init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->delete:Landroid/widget/Button;

    new-instance v12, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;

    invoke-direct {v12, p0, v10}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$2;-><init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->fileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 258
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicFiles:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 259
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicFiles:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_2

    .line 335
    .end local v5           #i:I
    .end local v10           #topicId:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p2

    .line 260
    .restart local v5       #i:I
    .restart local v10       #topicId:Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->topicFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 261
    .local v2, fileData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/Button;

    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {v1, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 262
    .local v1, fileButton:Landroid/widget/Button;
    const v11, -0xffff01

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 263
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 264
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    const v13, 0x7f05007b

    invoke-virtual {v12, v13}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v11, "DisplayFileName"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v11, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;

    invoke-direct {v11, p0, v2}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;-><init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/util/HashMap;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->fileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 277
    .end local v1           #fileButton:Landroid/widget/Button;
    .end local v2           #fileData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #i:I
    .end local v10           #topicId:Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, p1, -0x1

    .line 278
    .local v6, index:I
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->replys:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 279
    .local v8, replyData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->reply:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->fileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 281
    const-string v11, "IsDeletedMark"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 282
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->timePoster:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->content:Landroid/widget/TextView;

    iget-object v12, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    const v13, 0x7f050060

    invoke-virtual {v12, v13}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/high16 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 287
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->delete:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 290
    :cond_4
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->titleBar:Landroid/widget/LinearLayout;

    const-string v12, "#F5F175"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 291
    iget-object v12, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const-string v11, "Caption"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v12, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->timePoster:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v11, "PostDate"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " by "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v11, "Poster"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v12, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const-string v11, "Content"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const-string v11, "ReplyId"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 295
    .local v9, replyId:Ljava/lang/String;
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->delete:Landroid/widget/Button;

    new-instance v12, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;

    invoke-direct {v12, p0, v9}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$4;-><init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->replysFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 315
    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    iget-object v11, v11, Ledu/nctu/e3/TopicDetailActivity;->replysFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 316
    .local v3, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 317
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 318
    .restart local v2       #fileData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/Button;

    iget-object v11, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    invoke-direct {v1, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 319
    .restart local v1       #fileButton:Landroid/widget/Button;
    const v11, -0xffff01

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 320
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 321
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;

    const v13, 0x7f05007b

    invoke-virtual {v12, v13}, Ledu/nctu/e3/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v5, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v11, "DisplayFileName"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 322
    new-instance v11, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$5;

    invoke-direct {v11, p0, v2}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$5;-><init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/util/HashMap;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v11, v4, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->fileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
