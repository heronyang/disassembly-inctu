.class Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MaterialsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MaterialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaterialsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final option_lecture:I = 0x0

.field public static final option_reference:I = 0x1


# instance fields
.field materials:Ljava/util/ArrayList;
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

.field noMaterials:Z

.field final synthetic this$0:Ledu/nctu/e3/MaterialsActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/MaterialsActivity;Ljava/util/ArrayList;I)V
    .locals 8
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
    .local p2, materials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x1

    .line 211
    iput-object p1, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 212
    iput-object p2, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->materials:Ljava/util/ArrayList;

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, today:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 222
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->noMaterials:Z

    .line 223
    iget-boolean v3, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->noMaterials:Z

    if-eqz v3, :cond_0

    .line 224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v1, noMaterial:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    .line 233
    :goto_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v1           #noMaterial:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 215
    :cond_1
    const-string v3, "e3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "today="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v5, "e3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "begindate="

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v7, "BeginDate"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v5, "e3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "enddate="

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v7, "EndDate"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p1, Ledu/nctu/e3/MaterialsActivity;->userRole:Ljava/lang/String;

    const-string v5, "stu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "OpenState"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "BeginDate"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #calls: Ledu/nctu/e3/MaterialsActivity;->compareDate(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p1, v2, v3}, Ledu/nctu/e3/MaterialsActivity;->access$0(Ledu/nctu/e3/MaterialsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "EndDate"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #calls: Ledu/nctu/e3/MaterialsActivity;->compareDate(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p1, v2, v3}, Ledu/nctu/e3/MaterialsActivity;->access$0(Ledu/nctu/e3/MaterialsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 219
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 222
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 227
    .restart local v1       #noMaterial:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v3, "Title"

    const v4, 0x7f050083

    invoke-virtual {p1, v4}, Ledu/nctu/e3/MaterialsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 230
    :pswitch_1
    const-string v3, "Title"

    const v4, 0x7f050082

    invoke-virtual {p1, v4}, Ledu/nctu/e3/MaterialsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->materials:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 246
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->materials:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 252
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 261
    iget-boolean v4, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->noMaterials:Z

    if-eqz v4, :cond_0

    .line 262
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 263
    .local v3, textView:Landroid/widget/TextView;
    iget-object v4, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    const v5, 0x1030042

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 264
    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v4, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->materials:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "Title"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    const/high16 v4, 0x41c8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x96

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .end local v3           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v3

    .line 272
    :cond_0
    if-nez p2, :cond_1

    .line 273
    new-instance v0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;

    invoke-direct {v0, p0}, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;-><init>(Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;)V

    .line 274
    .local v0, holder:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;
    iget-object v4, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    invoke-virtual {v4}, Ledu/nctu/e3/MaterialsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 275
    .local v1, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f09006d

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;->materialsName:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f090061

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 277
    move-object p2, v1

    .line 278
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    .end local v0           #holder:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v4, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->materials:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 281
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;

    .line 282
    .restart local v0       #holder:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;
    iget-object v5, v0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;->materialsName:Landroid/widget/TextView;

    const-string v4, "DisplayName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v5, v0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;->date:Landroid/widget/TextView;

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

    .line 284
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
    .line 290
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->noMaterials:Z

    if-nez v1, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    const-class v2, Ledu/nctu/e3/MaterialFilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LoginTicket"

    iget-object v2, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v2, v2, Ledu/nctu/e3/MaterialsActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "CourseId"

    iget-object v2, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v2, v2, Ledu/nctu/e3/MaterialsActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v2, "ResId"

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->materials:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "DocumentId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "DisplayName"

    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->materials:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "DisplayName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/MaterialsActivity;->startActivity(Landroid/content/Intent;)V

    .line 298
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
