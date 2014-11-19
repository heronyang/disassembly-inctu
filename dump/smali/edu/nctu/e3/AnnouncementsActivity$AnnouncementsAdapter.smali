.class Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AnnouncementsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AnnouncementsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnnouncementsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final option_newest:I = 0x0

.field public static final option_overdue:I = 0x1


# instance fields
.field announcements:Ljava/util/ArrayList;
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

.field noAnnouncements:Z

.field final synthetic this$0:Ledu/nctu/e3/AnnouncementsActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/AnnouncementsActivity;Ljava/util/ArrayList;I)V
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
    .line 225
    .local p2, announcements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 226
    iput-object p2, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->noAnnouncements:Z

    .line 228
    iget-boolean v1, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->noAnnouncements:Z

    if-eqz v1, :cond_0

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v0, noAnnouncement:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    .line 238
    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v0           #noAnnouncement:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 227
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 232
    .restart local v0       #noAnnouncement:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const-string v1, "Title"

    const v2, 0x7f050080

    invoke-virtual {p1, v2}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 235
    :pswitch_1
    const-string v1, "Title"

    const v2, 0x7f050081

    invoke-virtual {p1, v2}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 230
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
    .line 244
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 250
    iget-object v0, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 256
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 266
    iget-boolean v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->noAnnouncements:Z

    if-eqz v7, :cond_0

    .line 267
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 268
    .local v4, textView:Landroid/widget/TextView;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    const v8, 0x1030042

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 269
    const/high16 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "Title"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    const/high16 v7, 0x41c8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 273
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    const/16 v9, 0x96

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v4           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v4

    .line 277
    :cond_0
    if-nez p2, :cond_1

    .line 278
    new-instance v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;

    invoke-direct {v1, p0}, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;-><init>(Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;)V

    .line 279
    .local v1, holder:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    invoke-virtual {v7}, Ledu/nctu/e3/AnnouncementsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 280
    .local v2, layout:Landroid/widget/LinearLayout;
    const v7, 0x7f090005

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 281
    .local v5, title:Landroid/widget/TextView;
    const v7, 0x7f090061

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 282
    .local v0, date:Landroid/widget/TextView;
    const v7, 0x7f090003

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 283
    .local v6, type:Landroid/widget/TextView;
    iput-object v5, v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 284
    iput-object v0, v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 285
    iput-object v6, v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;->type:Landroid/widget/TextView;

    .line 286
    move-object p2, v2

    .line 287
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 289
    .end local v0           #date:Landroid/widget/TextView;
    .end local v1           #holder:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;
    .end local v2           #layout:Landroid/widget/LinearLayout;
    .end local v5           #title:Landroid/widget/TextView;
    .end local v6           #type:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;

    .line 290
    .restart local v1       #holder:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 291
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const-string v7, "Caption"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v8, v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "BeginDate"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "~"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v7, "EndDate"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v8, v1, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;->type:Landroid/widget/TextView;

    const-string v7, "BulType"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    const v9, 0x7f050037

    invoke-virtual {v7, v9}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, p2

    .line 294
    goto/16 :goto_0

    .line 293
    :cond_2
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    const v9, 0x7f050038

    invoke-virtual {v7, v9}, Ledu/nctu/e3/AnnouncementsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 300
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->noAnnouncements:Z

    if-nez v7, :cond_0

    .line 301
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "Caption"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .local v3, caption:Ljava/lang/String;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "BeginDate"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, beginDate:Ljava/lang/String;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "EndDate"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 304
    .local v5, endDate:Ljava/lang/String;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "Content"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 305
    .local v4, content:Ljava/lang/String;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "BulletinId"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, bulletinId:Ljava/lang/String;
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->announcements:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "BulType"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 307
    .local v1, bulType:I
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    const-class v8, Ledu/nctu/e3/AnnouncementActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .local v6, intent:Landroid/content/Intent;
    const-string v7, "Caption"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v7, "BeginDate"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v7, "EndDate"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v7, "Content"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v7, "BulletinId"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v7, "LoginTicket"

    iget-object v8, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v8, v8, Ledu/nctu/e3/AnnouncementsActivity;->loginTicket:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v7, "CourseId"

    iget-object v8, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    iget-object v8, v8, Ledu/nctu/e3/AnnouncementsActivity;->courseId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v7, "BulType"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    iget-object v7, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;->this$0:Ledu/nctu/e3/AnnouncementsActivity;

    invoke-virtual {v7, v6}, Ledu/nctu/e3/AnnouncementsActivity;->startActivity(Landroid/content/Intent;)V

    .line 318
    .end local v0           #beginDate:Ljava/lang/String;
    .end local v1           #bulType:I
    .end local v2           #bulletinId:Ljava/lang/String;
    .end local v3           #caption:Ljava/lang/String;
    .end local v4           #content:Ljava/lang/String;
    .end local v5           #endDate:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
