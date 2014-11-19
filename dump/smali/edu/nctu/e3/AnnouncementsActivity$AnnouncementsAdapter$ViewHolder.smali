.class Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AnnouncementsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field final synthetic this$1:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

.field public title:Landroid/widget/TextView;

.field public type:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter$ViewHolder;->this$1:Ledu/nctu/e3/AnnouncementsActivity$AnnouncementsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
