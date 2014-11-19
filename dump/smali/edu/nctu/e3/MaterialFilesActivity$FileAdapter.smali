.class Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "MaterialFilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MaterialFilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/MaterialFilesActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/MaterialFilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    iget-object v0, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

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
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/high16 v8, 0x4480

    .line 149
    iget-object v5, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    invoke-virtual {v5}, Ledu/nctu/e3/MaterialFilesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030024

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 150
    .local v2, layout:Landroid/widget/LinearLayout;
    const v5, 0x7f090042

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, name:Landroid/widget/TextView;
    iget-object v5, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v5, v5, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "DisplayFileName"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v5, 0x7f09006c

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 153
    .local v4, size:Landroid/widget/TextView;
    iget-object v5, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v5, v5, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "FileSize"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 154
    .local v0, Size:J
    const-wide/16 v5, 0x400

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    move-object p2, v2

    .line 164
    return-object p2

    .line 156
    :cond_0
    const-wide/32 v5, 0x100000

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v6, v6, Ledu/nctu/e3/MaterialFilesActivity;->sizeFormat:Ljava/text/DecimalFormat;

    long-to-float v7, v0

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_1
    const-wide/32 v5, 0x40000000

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v6, v6, Ledu/nctu/e3/MaterialFilesActivity;->sizeFormat:Ljava/text/DecimalFormat;

    long-to-float v7, v0

    div-float/2addr v7, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v6, v6, Ledu/nctu/e3/MaterialFilesActivity;->sizeFormat:Ljava/text/DecimalFormat;

    long-to-float v7, v0

    div-float/2addr v7, v8

    div-float/2addr v7, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "GB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
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
    .line 171
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    sget-object v2, Ledu/nctu/e3/MainActivity;->appFolder:Ljava/lang/String;

    .line 173
    .local v2, path:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v4, v4, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "DisplayFileName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, filename:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v4, v4, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "RealityFileName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, urlStr:Ljava/lang/String;
    iget-object v4, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    iget-object v4, v4, Ledu/nctu/e3/MaterialFilesActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "MimeType"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, mimeType:Ljava/lang/String;
    new-instance v4, Ledu/nctu/e3/MaterialFilesActivity$DownloadTask;

    iget-object v5, p0, Ledu/nctu/e3/MaterialFilesActivity$FileAdapter;->this$0:Ledu/nctu/e3/MaterialFilesActivity;

    invoke-direct {v4, v5, v1}, Ledu/nctu/e3/MaterialFilesActivity$DownloadTask;-><init>(Ledu/nctu/e3/MaterialFilesActivity;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Ledu/nctu/e3/MaterialFilesActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    .end local v0           #filename:Ljava/lang/String;
    .end local v1           #mimeType:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #urlStr:Ljava/lang/String;
    :cond_0
    return-void
.end method
