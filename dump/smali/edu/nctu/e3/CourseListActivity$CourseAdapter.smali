.class Ledu/nctu/e3/CourseListActivity$CourseAdapter;
.super Landroid/widget/BaseAdapter;
.source "CourseListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/CourseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CourseAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;
    }
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field imgsrc:I

.field name_:Ljava/lang/String;

.field noCourses:Z

.field number_:Ljava/lang/String;

.field role:Ljava/lang/String;

.field teacher_:Ljava/lang/String;

.field final synthetic this$0:Ledu/nctu/e3/CourseListActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/CourseListActivity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter "role"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, courses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 244
    iput-object p2, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->courses:Ljava/util/ArrayList;

    .line 245
    iput-object p3, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->role:Ljava/lang/String;

    .line 246
    const-string v1, "stu"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const v1, 0x7f020017

    iput v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->imgsrc:I

    .line 253
    :cond_0
    :goto_0
    const v1, 0x7f050035

    invoke-virtual {p1, v1}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->teacher_:Ljava/lang/String;

    .line 254
    const v1, 0x7f05001d

    invoke-virtual {p1, v1}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->name_:Ljava/lang/String;

    .line 255
    const v1, 0x7f050036

    invoke-virtual {p1, v1}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->number_:Ljava/lang/String;

    .line 256
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->noCourses:Z

    .line 257
    iget-boolean v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->noCourses:Z

    if-eqz v1, :cond_1

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v0, noCourse:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Title"

    const v2, 0x7f05007f

    invoke-virtual {p1, v2}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v0           #noCourse:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 248
    :cond_2
    const-string v1, "tea"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const v1, 0x7f020019

    iput v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->imgsrc:I

    goto :goto_0

    .line 250
    :cond_3
    const-string v1, "ta"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const v1, 0x7f020018

    iput v1, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->imgsrc:I

    goto :goto_0

    .line 256
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 272
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 278
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f090068

    const v8, 0x7f090066

    const v7, 0x7f030021

    .line 289
    iget-boolean v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->noCourses:Z

    if-eqz v6, :cond_0

    .line 290
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    invoke-virtual {v6}, Ledu/nctu/e3/CourseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 291
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 292
    .local v5, textView:Landroid/widget/TextView;
    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    const v7, 0x7f05007f

    invoke-virtual {v6, v7}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 295
    .local v2, img:Landroid/widget/ImageView;
    iget v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->imgsrc:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    const v6, 0x7f090062

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 297
    .local v0, clickableIndicator:Landroid/widget/ImageView;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    .end local v0           #clickableIndicator:Landroid/widget/ImageView;
    .end local v2           #img:Landroid/widget/ImageView;
    .end local v3           #layout:Landroid/widget/LinearLayout;
    .end local v5           #textView:Landroid/widget/TextView;
    :goto_0
    return-object v3

    .line 301
    :cond_0
    if-nez p2, :cond_1

    .line 302
    new-instance v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;

    invoke-direct {v1, p0}, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;-><init>(Ledu/nctu/e3/CourseListActivity$CourseAdapter;)V

    .line 303
    .local v1, holder:Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    invoke-virtual {v6}, Ledu/nctu/e3/CourseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 304
    .restart local v3       #layout:Landroid/widget/LinearLayout;
    const v6, 0x7f090067

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->teacher:Landroid/widget/TextView;

    .line 305
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->courseName:Landroid/widget/TextView;

    .line 306
    const v6, 0x7f090069

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->courseNumber:Landroid/widget/TextView;

    .line 307
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 308
    iget-object v6, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget v7, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->imgsrc:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    move-object p2, v3

    .line 310
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 312
    .end local v1           #holder:Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;
    .end local v3           #layout:Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;

    .line 313
    .restart local v1       #holder:Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 314
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->teacher:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->teacher_:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "TeacherName"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    const v9, 0x7f050012

    invoke-virtual {v8, v9}, Ledu/nctu/e3/CourseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const-string v6, "PositionStatus"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 316
    iget-object v7, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->courseName:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "(\u65c1\u807d)"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->name_:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "CourseName"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :goto_1
    iget-object v7, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->courseNumber:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->number_:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "CrsYear"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "CrsSemester"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v6, "CourseNo"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, p2

    .line 321
    goto/16 :goto_0

    .line 318
    :cond_2
    iget-object v7, v1, Ledu/nctu/e3/CourseListActivity$CourseAdapter$ViewHolder;->courseName:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->name_:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "CourseName"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 328
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->noCourses:Z

    if-nez v6, :cond_0

    .line 329
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->courses:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 330
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "CourseId"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, courseId:Ljava/lang/String;
    const-string v6, "UserRole"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 332
    .local v5, userRole:Ljava/lang/String;
    const-string v6, "CourseName"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, courseName:Ljava/lang/String;
    const-string v6, "CourseNo"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, courseNo:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    const-class v7, Ledu/nctu/e3/CourseDetailActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "CourseId"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "UserRole"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "CourseName"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "CourseNo"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "From"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 340
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v6, v6, Ledu/nctu/e3/CourseListActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    iget-object v6, p0, Ledu/nctu/e3/CourseListActivity$CourseAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    invoke-virtual {v6, v3}, Ledu/nctu/e3/CourseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 343
    .end local v0           #courseId:Ljava/lang/String;
    .end local v1           #courseName:Ljava/lang/String;
    .end local v2           #courseNo:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #userRole:Ljava/lang/String;
    :cond_0
    return-void
.end method
