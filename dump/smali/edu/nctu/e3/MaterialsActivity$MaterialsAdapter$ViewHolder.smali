.class Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MaterialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public date:Landroid/widget/TextView;

.field public materialsName:Landroid/widget/TextView;

.field final synthetic this$1:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;


# direct methods
.method constructor <init>(Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter$ViewHolder;->this$1:Ledu/nctu/e3/MaterialsActivity$MaterialsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
