.class Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/ScoreActivity$ScoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public displayName:Landroid/widget/TextView;

.field public score:Landroid/widget/TextView;

.field final synthetic this$1:Ledu/nctu/e3/ScoreActivity$ScoreAdapter;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ScoreActivity$ScoreAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Ledu/nctu/e3/ScoreActivity$ScoreAdapter$ViewHolder;->this$1:Ledu/nctu/e3/ScoreActivity$ScoreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
