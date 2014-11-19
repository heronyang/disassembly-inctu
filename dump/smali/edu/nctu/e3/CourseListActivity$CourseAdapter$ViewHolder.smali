.class Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CourseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/CourseListActivity$CourseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public courseName:Landroid/widget/TextView;

.field public courseNumber:Landroid/widget/TextView;

.field public img:Landroid/widget/ImageView;

.field public teacher:Landroid/widget/TextView;

.field final synthetic this$1:Ledu/nctu/e3/CourseListActivity$CourseAdapter;


# direct methods
.method constructor <init>(Ledu/nctu/e3/CourseListActivity$CourseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->this$1:Ledu/nctu/e3/CourseListActivity$CourseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
