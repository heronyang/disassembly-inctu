.class Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/NewsActivity$NewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public clickableIndicator:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$1:Ledu/nctu/e3/NewsActivity$NewsAdapter;


# direct methods
.method constructor <init>(Ledu/nctu/e3/NewsActivity$NewsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Ledu/nctu/e3/NewsActivity$NewsAdapter$ViewHolder;->this$1:Ledu/nctu/e3/NewsActivity$NewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
