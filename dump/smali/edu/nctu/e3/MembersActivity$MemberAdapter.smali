.class Ledu/nctu/e3/MembersActivity$MemberAdapter;
.super Landroid/widget/BaseAdapter;
.source "MembersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemberAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field members:Ljava/util/ArrayList;
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

.field noMember:Z

.field final synthetic this$0:Ledu/nctu/e3/MembersActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/MembersActivity;Ljava/util/ArrayList;)V
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
    .line 229
    .local p2, members:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 230
    iput-object p2, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->members:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->noMember:Z

    .line 232
    iget-boolean v1, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->noMember:Z

    if-eqz v1, :cond_0

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, noMember:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Title"

    const v2, 0x7f05009e

    invoke-virtual {p1, v2}, Ledu/nctu/e3/MembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v0           #noMember:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 231
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 247
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 253
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f020021

    .line 264
    iget-boolean v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->noMember:Z

    if-eqz v5, :cond_0

    .line 265
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v3, textView:Landroid/widget/TextView;
    iget-object v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    const v6, 0x1030042

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 267
    const/high16 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->members:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "Title"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    const/high16 v5, 0x41c8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 271
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0x96

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .end local v3           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v3

    .line 274
    :cond_0
    if-nez p2, :cond_1

    .line 275
    new-instance v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;

    invoke-direct {v0, p0}, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;-><init>(Ledu/nctu/e3/MembersActivity$MemberAdapter;)V

    .line 276
    .local v0, holder:Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;
    iget-object v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    invoke-virtual {v5}, Ledu/nctu/e3/MembersActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030026

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 277
    .local v1, layout:Landroid/widget/LinearLayout;
    const v5, 0x7f09006e

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 278
    const v5, 0x7f090042

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 279
    const v5, 0x7f09006f

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->depart:Landroid/widget/TextView;

    .line 280
    move-object p2, v1

    .line 281
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 283
    .end local v0           #holder:Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;

    .line 284
    .restart local v0       #holder:Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;
    iget-object v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 285
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    const v8, 0x7f05001d

    invoke-virtual {v5, v8}, Ledu/nctu/e3/MembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Name"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v6, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->depart:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    const v8, 0x7f050039

    invoke-virtual {v5, v8}, Ledu/nctu/e3/MembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "DepartId"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const-string v5, "UserRole"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 288
    .local v4, userRole:Ljava/lang/String;
    const-string v5, "mtea"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    iget-object v5, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object v3, p2

    .line 297
    goto/16 :goto_0

    .line 290
    :cond_2
    const-string v5, "ta"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    iget-object v5, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020023

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 292
    :cond_3
    const-string v5, "stu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 293
    iget-object v5, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f020022

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 295
    :cond_4
    iget-object v5, v0, Ledu/nctu/e3/MembersActivity$MemberAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

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
    .line 304
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    const-class v3, Ledu/nctu/e3/MemberActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 306
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "DepartId"

    const-string v2, "DepartId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v3, "Name"

    const-string v2, "Name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v3, "EMail"

    const-string v2, "EMail"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v3, "MSNAccount"

    const-string v2, "MSNAccount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v3, "Mobile"

    const-string v2, "Mobile"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v3, "Tel"

    const-string v2, "Tel"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v3, "Url"

    const-string v2, "Url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v3, "OfficeLab"

    const-string v2, "OfficeLab"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v3, "NickName"

    const-string v2, "NickName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v3, "Introduce"

    const-string v2, "Introduce"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v2, "UserRole"

    iget-object v3, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v3, v3, Ledu/nctu/e3/MembersActivity;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$MemberAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    invoke-virtual {v2, v0}, Ledu/nctu/e3/MembersActivity;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method
