.class Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
.super Landroid/widget/BaseAdapter;
.source "CurriculumActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/CurriculumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OtherCourseAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field courses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ledu/nctu/e3/helpers/CourseInformation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ledu/nctu/e3/CurriculumActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ledu/nctu/e3/helpers/CourseInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p2, courses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ledu/nctu/e3/helpers/CourseInformation;>;"
    iput-object p1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 522
    iput-object p2, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    .line 523
    iget-object v0, p1, Ledu/nctu/e3/CurriculumActivity;->otherCoursesLayout:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 524
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 534
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 540
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 546
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 547
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 548
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 549
    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/helpers/CourseInformation;

    iget-object v1, v1, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 558
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-class v2, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "CourseId"

    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/helpers/CourseInformation;

    iget-object v1, v1, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 560
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "UserRole"

    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/helpers/CourseInformation;

    iget-object v1, v1, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 561
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "CourseName"

    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/helpers/CourseInformation;

    iget-object v1, v1, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 562
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "CourseNo"

    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/helpers/CourseInformation;

    iget-object v1, v1, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "From"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CurriculumActivity;->startActivity(Landroid/content/Intent;)V

    .line 566
    return-void
.end method
