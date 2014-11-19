.class Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public content:Landroid/widget/TextView;

.field public delete:Landroid/widget/Button;

.field public fileLayout:Landroid/widget/LinearLayout;

.field public reply:Landroid/widget/Button;

.field final synthetic this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

.field public timePoster:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public titleBar:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter$ViewHolder;->this$1:Ledu/nctu/e3/TopicDetailActivity$ReplysAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
