.class Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
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
    name = "CurriculumAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field blocks:[Ledu/nctu/e3/helpers/CourseInformation;

.field courses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field paddingDip:I

.field params:Landroid/widget/FrameLayout$LayoutParams;

.field showTime:Z

.field final synthetic this$0:Ledu/nctu/e3/CurriculumActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;[Ledu/nctu/e3/helpers/CourseInformation;)V
    .locals 6
    .parameter
    .parameter
    .parameter "blocks"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;[",
            "Ledu/nctu/e3/helpers/CourseInformation;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, courses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v5, -0x1

    .line 319
    iput-object p1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 317
    const/4 v2, 0x1

    iput-boolean v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->showTime:Z

    .line 320
    const/high16 v2, 0x3f80

    invoke-virtual {p1}, Ledu/nctu/e3/CurriculumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->paddingDip:I

    .line 321
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->params:Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    iput-object p3, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    .line 323
    iput-object p2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->courses:Ljava/util/ArrayList;

    .line 324
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 336
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 330
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 331
    aget-object v2, p3, v1

    iget-object v3, p1, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    rem-int/lit8 v4, v0, 0xa

    aget v3, v3, v4

    iput v3, v2, Ledu/nctu/e3/helpers/CourseInformation;->color:I

    .line 324
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_2
    aget-object v2, p3, v1

    iget-object v3, v2, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "CourseName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_3
    aget-object v2, p3, v1

    iput v5, v2, Ledu/nctu/e3/helpers/CourseInformation;->color:I

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 346
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 352
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 358
    if-nez p2, :cond_0

    .line 359
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, layout:Landroid/widget/FrameLayout;
    iget v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->paddingDip:I

    iget v3, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->paddingDip:I

    iget v4, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->paddingDip:I

    iget v5, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->paddingDip:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 361
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 362
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 363
    .local v1, textView:Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 364
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 367
    move-object p2, v0

    .line 369
    .end local v0           #layout:Landroid/widget/FrameLayout;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    invoke-virtual {v3}, Ledu/nctu/e3/helpers/UnScrollableGridView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x7

    iget-object v4, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v4, v4, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    invoke-virtual {v4}, Ledu/nctu/e3/helpers/UnScrollableGridView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 371
    .restart local v1       #textView:Landroid/widget/TextView;
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v2, p1

    iget-object v2, v2, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v2, p1

    iget v2, v2, Ledu/nctu/e3/helpers/CourseInformation;->color:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 373
    return-object p2
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
    .line 379
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v1, v1, p3

    iget-object v1, v1, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-class v2, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "CourseId"

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v3, v3, p3

    iget-object v3, v3, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "UserRole"

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v3, v3, p3

    iget-object v3, v3, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "CourseName"

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v3, v3, p3

    iget-object v3, v3, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "CourseNo"

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->blocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v3, v3, p3

    iget-object v3, v3, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "From"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 386
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;->this$0:Ledu/nctu/e3/CurriculumActivity;

    invoke-virtual {v1, v0}, Ledu/nctu/e3/CurriculumActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
