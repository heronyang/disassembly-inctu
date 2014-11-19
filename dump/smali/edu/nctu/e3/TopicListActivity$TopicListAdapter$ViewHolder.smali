.class Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TopicListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicListActivity$TopicListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field public lastPost:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field final synthetic this$1:Ledu/nctu/e3/TopicListActivity$TopicListAdapter;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicListActivity$TopicListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Ledu/nctu/e3/TopicListActivity$TopicListAdapter$ViewHolder;->this$1:Ledu/nctu/e3/TopicListActivity$TopicListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
