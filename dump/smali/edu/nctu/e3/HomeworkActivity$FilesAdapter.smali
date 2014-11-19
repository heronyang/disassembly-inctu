.class Ledu/nctu/e3/HomeworkActivity$FilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeworkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/HomeworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field files:Ljava/util/ArrayList;
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

.field final synthetic this$0:Ledu/nctu/e3/HomeworkActivity;

.field type:I


# direct methods
.method public constructor <init>(Ledu/nctu/e3/HomeworkActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "type"
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
    .line 114
    .local p2, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->this$0:Ledu/nctu/e3/HomeworkActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 115
    iput-object p2, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    .line 116
    iput p3, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->type:I

    .line 117
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 127
    iget-object v0, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 133
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 139
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->this$0:Ledu/nctu/e3/HomeworkActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->this$0:Ledu/nctu/e3/HomeworkActivity;

    const v2, 0x1030042

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 141
    iget v1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->type:I

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    move-object p2, v0

    .line 152
    return-object p2

    .line 143
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->this$0:Ledu/nctu/e3/HomeworkActivity;

    const v3, 0x7f050043

    invoke-virtual {v1, v3}, Ledu/nctu/e3/HomeworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "DisplayFileName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 147
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->this$0:Ledu/nctu/e3/HomeworkActivity;

    const v3, 0x7f050044

    invoke-virtual {v1, v3}, Ledu/nctu/e3/HomeworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "DisplayFileName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const-string v1, "#800080"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 159
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    sget-object v2, Ledu/nctu/e3/MainActivity;->appFolder:Ljava/lang/String;

    .line 161
    .local v2, path:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "DisplayFileName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, filename:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "RealityFileName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 163
    .local v3, urlStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "MimeType"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, mimeType:Ljava/lang/String;
    new-instance v4, Ledu/nctu/e3/HomeworkActivity$DownloadTask;

    iget-object v5, p0, Ledu/nctu/e3/HomeworkActivity$FilesAdapter;->this$0:Ledu/nctu/e3/HomeworkActivity;

    invoke-direct {v4, v5, v1}, Ledu/nctu/e3/HomeworkActivity$DownloadTask;-><init>(Ledu/nctu/e3/HomeworkActivity;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Ledu/nctu/e3/HomeworkActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    .end local v0           #filename:Ljava/lang/String;
    .end local v1           #mimeType:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #urlStr:Ljava/lang/String;
    :cond_0
    return-void
.end method
