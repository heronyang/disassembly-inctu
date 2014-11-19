.class Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

.field private final synthetic val$fileData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    iput-object p2, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;->val$fileData:Ljava/util/HashMap;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 270
    new-instance v1, Ledu/nctu/e3/TopicDetailActivity$DownloadTask;

    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    #getter for: Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->this$0:Ledu/nctu/e3/TopicDetailActivity;
    invoke-static {v0}, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;->access$0(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)Ledu/nctu/e3/TopicDetailActivity;

    move-result-object v2

    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;->val$fileData:Ljava/util/HashMap;

    const-string v3, "MimeType"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ledu/nctu/e3/TopicDetailActivity$DownloadTask;-><init>(Ledu/nctu/e3/TopicDetailActivity;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;->val$fileData:Ljava/util/HashMap;

    const-string v4, "RealityFileName"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$3;->val$fileData:Ljava/util/HashMap;

    const-string v4, "DisplayFileName"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ledu/nctu/e3/TopicDetailActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    return-void
.end method
