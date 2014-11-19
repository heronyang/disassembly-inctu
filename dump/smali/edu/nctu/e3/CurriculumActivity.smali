.class public Ledu/nctu/e3/CurriculumActivity;
.super Landroid/app/Activity;
.source "CurriculumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;,
        Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;,
        Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    }
.end annotation


# static fields
.field static final alphaOrder:[Ljava/lang/String; = null

.field static final option_stu:I = 0x0

.field static final option_ta:I = 0x2

.field static final option_tea:I = 0x1

.field static final order_alpha:I = 0x0

.field static final order_time:I = 0x1

.field static final timeOrder:[Ljava/lang/String;


# instance fields
.field accountId:Ljava/lang/String;

.field colors:[I

.field curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

.field datebar:Landroid/widget/HorizontalScrollView;

.field datebarHolder:Landroid/widget/LinearLayout;

.field firstTouch:Z

.field handler:Landroid/os/Handler;

.field hsv:Landroid/widget/HorizontalScrollView;

.field loginTicket:Ljava/lang/String;

.field mx:F

.field my:F

.field online_curriculum:Z

.field order:I

.field originalDist:F

.field otherCoursesLayout:Landroid/widget/ListView;

.field preferenceEditor:Landroid/content/SharedPreferences$Editor;

.field preferences:Landroid/content/SharedPreferences;

.field role:Ljava/lang/String;

.field space:Landroid/widget/TextView;

.field stuCourses:Ljava/util/ArrayList;
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

.field stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

.field stuothers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ledu/nctu/e3/helpers/CourseInformation;",
            ">;"
        }
    .end annotation
.end field

.field sv:Landroid/widget/ScrollView;

.field taCourses:Ljava/util/ArrayList;
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

.field tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

.field taothers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ledu/nctu/e3/helpers/CourseInformation;",
            ">;"
        }
    .end annotation
.end field

.field teaCourses:Ljava/util/ArrayList;
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

.field teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

.field teaothers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ledu/nctu/e3/helpers/CourseInformation;",
            ">;"
        }
    .end annotation
.end field

.field timebar:Landroid/widget/ScrollView;

.field timebarHolder:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "M"

    aput-object v1, v0, v3

    const-string v1, "N"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "X"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "L"

    aput-object v2, v0, v1

    sput-object v0, Ledu/nctu/e3/CurriculumActivity;->alphaOrder:[Ljava/lang/String;

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "06:00"

    aput-object v1, v0, v3

    const-string v1, "07:00"

    aput-object v1, v0, v4

    const-string v1, "08:00"

    aput-object v1, v0, v5

    const-string v1, "09:00"

    aput-object v1, v0, v6

    const-string v1, "10:10"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "11:10"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "12:20"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "13:20"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "14:20"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "15:30"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "16:30"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "17:30"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "18:30"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "19:30"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "20:30"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "21:30"

    aput-object v2, v0, v1

    sput-object v0, Ledu/nctu/e3/CurriculumActivity;->timeOrder:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const-string v0, "\u5b78\u751f"

    iput-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    .line 71
    iput v1, p0, Ledu/nctu/e3/CurriculumActivity;->order:I

    .line 40
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 305
    invoke-static {p0}, Ledu/nctu/e3/CurriculumActivity;->convertSectionToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Ledu/nctu/e3/CurriculumActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Ledu/nctu/e3/CurriculumActivity;->setCurriculum(I)V

    return-void
.end method

.method private static convertSectionToInt(Ljava/lang/String;)I
    .locals 2
    .parameter "section"

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ledu/nctu/e3/CurriculumActivity;->alphaOrder:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 311
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 307
    :cond_0
    sget-object v1, Ledu/nctu/e3/CurriculumActivity;->alphaOrder:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setCurriculum(I)V
    .locals 8
    .parameter "option"

    .prologue
    const v7, 0x7f090018

    const v6, 0x7f05009b

    const v4, 0x7f05007e

    const/4 v5, 0x1

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, adapter:Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
    const/4 v1, 0x0

    .line 151
    .local v1, adapter2:Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    packed-switch p1, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    invoke-virtual {v2, v0}, Ledu/nctu/e3/helpers/UnScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-boolean v2, p0, Ledu/nctu/e3/CurriculumActivity;->online_curriculum:Z

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    invoke-virtual {v2, v0}, Ledu/nctu/e3/helpers/UnScrollableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    :cond_1
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->otherCoursesLayout:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-boolean v2, p0, Ledu/nctu/e3/CurriculumActivity;->online_curriculum:Z

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->otherCoursesLayout:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    :cond_2
    return-void

    .line 153
    :pswitch_0
    new-instance v0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;

    .end local v0           #adapter:Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    invoke-direct {v0, p0, v2, v3}, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;-><init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;[Ledu/nctu/e3/helpers/CourseInformation;)V

    .line 154
    .restart local v0       #adapter:Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
    new-instance v1, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;

    .end local v1           #adapter2:Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->stuothers:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;-><init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;)V

    .line 155
    .restart local v1       #adapter2:Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    invoke-virtual {p0, v7}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f050011

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-virtual {p0, v6}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 161
    :pswitch_1
    new-instance v0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;

    .end local v0           #adapter:Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    invoke-direct {v0, p0, v2, v3}, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;-><init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;[Ledu/nctu/e3/helpers/CourseInformation;)V

    .line 162
    .restart local v0       #adapter:Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
    new-instance v1, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;

    .end local v1           #adapter2:Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->teaothers:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;-><init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;)V

    .line 163
    .restart local v1       #adapter2:Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    invoke-virtual {p0, v7}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f050012

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {p0, v6}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 169
    :pswitch_2
    new-instance v0, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;

    .end local v0           #adapter:Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    invoke-direct {v0, p0, v2, v3}, Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;-><init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;[Ledu/nctu/e3/helpers/CourseInformation;)V

    .line 170
    .restart local v0       #adapter:Ledu/nctu/e3/CurriculumActivity$CurriculumAdapter;
    new-instance v1, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;

    .end local v1           #adapter2:Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->taothers:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;-><init>(Ledu/nctu/e3/CurriculumActivity;Ljava/util/ArrayList;)V

    .line 171
    .restart local v1       #adapter2:Ledu/nctu/e3/CurriculumActivity$OtherCourseAdapter;
    invoke-virtual {p0, v7}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f050013

    invoke-virtual {p0, v4}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-virtual {p0, v6}, Ledu/nctu/e3/CurriculumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Ledu/nctu/e3/helpers/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f09002d

    const v4, 0x7f09002c

    const v3, 0x7f09002b

    const v1, 0x7f09002a

    const/4 v2, 0x1

    .line 477
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget v0, p0, Ledu/nctu/e3/CurriculumActivity;->order:I

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "06:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "07:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "08:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "09:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "10:10"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "11:10"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "12:20"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "13:20"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "14:20"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "15:30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "16:30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "17:30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "18:30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "19:30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "20:30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "21:30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iput v2, p0, Ledu/nctu/e3/CurriculumActivity;->order:I

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget v0, p0, Ledu/nctu/e3/CurriculumActivity;->order:I

    if-ne v0, v2, :cond_0

    .line 497
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "I"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "J"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Ledu/nctu/e3/CurriculumActivity;->order:I

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x70

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, v5}, Ledu/nctu/e3/CurriculumActivity;->requestWindowFeature(I)Z

    .line 82
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->setContentView(I)V

    .line 83
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ledu/nctu/e3/helpers/UnScrollableGridView;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    .line 84
    const v1, 0x7f09003d

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->otherCoursesLayout:Landroid/widget/ListView;

    .line 85
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->sv:Landroid/widget/ScrollView;

    .line 86
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->hsv:Landroid/widget/HorizontalScrollView;

    .line 87
    const v1, 0x7f090028

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    .line 88
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->timebarHolder:Landroid/widget/LinearLayout;

    .line 89
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->timebarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f090026

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->datebar:Landroid/widget/HorizontalScrollView;

    .line 91
    const v1, 0x7f090025

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->space:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f090027

    invoke-virtual {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->datebarHolder:Landroid/widget/LinearLayout;

    .line 93
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    .line 94
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "online_curriculum"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ledu/nctu/e3/CurriculumActivity;->online_curriculum:Z

    .line 96
    iget-boolean v1, p0, Ledu/nctu/e3/CurriculumActivity;->online_curriculum:Z

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "LoginTicket"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "AccountId"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->accountId:Ljava/lang/String;

    .line 100
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->stuothers:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->teaothers:Ljava/util/ArrayList;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->taothers:Ljava/util/ArrayList;

    .line 103
    new-array v1, v6, [Ledu/nctu/e3/helpers/CourseInformation;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    .line 104
    new-array v1, v6, [Ledu/nctu/e3/helpers/CourseInformation;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    .line 105
    new-array v1, v6, [Ledu/nctu/e3/helpers/CourseInformation;

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    .line 106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 112
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    .line 113
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const-string v2, "#fff8ca"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 114
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const-string v2, "#ddf5cd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    .line 115
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const-string v2, "#ffecf9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v7

    .line 116
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const/4 v2, 0x3

    const-string v3, "#d9f4fd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 117
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const/4 v2, 0x4

    const-string v3, "#d6e8dd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 118
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const/4 v2, 0x5

    const-string v3, "#d1d1e2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 119
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const/4 v2, 0x6

    const-string v3, "#ffebdf"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 120
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const/4 v2, 0x7

    const-string v3, "#f0dcd6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 121
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const/16 v2, 0x8

    const-string v3, "#e4e5e6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 122
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->colors:[I

    const/16 v2, 0x9

    const-string v3, "#d8d5d3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    .line 124
    new-instance v1, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;

    invoke-direct {v1, p0}, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;-><init>(Ledu/nctu/e3/CurriculumActivity;)V

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Ledu/nctu/e3/CurriculumActivity;->accountId:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    new-instance v2, Ledu/nctu/e3/helpers/CourseInformation;

    invoke-direct {v2}, Ledu/nctu/e3/helpers/CourseInformation;-><init>()V

    aput-object v2, v1, v0

    .line 108
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    new-instance v2, Ledu/nctu/e3/helpers/CourseInformation;

    invoke-direct {v2}, Ledu/nctu/e3/helpers/CourseInformation;-><init>()V

    aput-object v2, v1, v0

    .line 109
    iget-object v1, p0, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    new-instance v2, Ledu/nctu/e3/helpers/CourseInformation;

    invoke-direct {v2}, Ledu/nctu/e3/helpers/CourseInformation;-><init>()V

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 130
    invoke-virtual {p0}, Ledu/nctu/e3/CurriculumActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 146
    :goto_0
    return v1

    .line 137
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ledu/nctu/e3/CurriculumActivity;->setCurriculum(I)V

    goto :goto_0

    .line 140
    :sswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ledu/nctu/e3/CurriculumActivity;->setCurriculum(I)V

    goto :goto_0

    .line 143
    :sswitch_2
    invoke-direct {p0, v1}, Ledu/nctu/e3/CurriculumActivity;->setCurriculum(I)V

    goto :goto_0

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090067 -> :sswitch_2
        0x7f09007f -> :sswitch_0
        0x7f090080 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->otherCoursesLayout:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getTop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v11, v10

    if-gez v10, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ne v10, v13, :cond_2

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    :pswitch_0
    return v13

    .line 401
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Ledu/nctu/e3/CurriculumActivity;->mx:F

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Ledu/nctu/e3/CurriculumActivity;->my:F

    goto :goto_0

    .line 405
    :pswitch_2
    iget-boolean v10, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    if-eqz v10, :cond_1

    .line 406
    iput-boolean v12, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Ledu/nctu/e3/CurriculumActivity;->mx:F

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Ledu/nctu/e3/CurriculumActivity;->my:F

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 411
    .local v0, cx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 412
    .local v1, cy:F
    iget v10, p0, Ledu/nctu/e3/CurriculumActivity;->mx:F

    sub-float/2addr v10, v0

    float-to-int v3, v10

    .line 413
    .local v3, dx:I
    iget v10, p0, Ledu/nctu/e3/CurriculumActivity;->my:F

    sub-float/2addr v10, v1

    float-to-int v5, v10

    .line 414
    .local v5, dy:I
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->sv:Landroid/widget/ScrollView;

    invoke-virtual {v10, v3, v5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 415
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->hsv:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v10, v3, v5}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 416
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->timebar:Landroid/widget/ScrollView;

    invoke-virtual {v10, v3, v5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 417
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->datebar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v10, v3, v5}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 418
    iput v0, p0, Ledu/nctu/e3/CurriculumActivity;->mx:F

    .line 419
    iput v1, p0, Ledu/nctu/e3/CurriculumActivity;->my:F

    goto :goto_0

    .line 423
    .end local v0           #cx:F
    .end local v1           #cy:F
    .end local v3           #dx:I
    .end local v5           #dy:I
    :pswitch_3
    iput-boolean v13, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    packed-switch v10, :pswitch_data_1

    goto :goto_0

    .line 457
    :pswitch_4
    iput-boolean v13, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    goto :goto_0

    .line 434
    :pswitch_5
    iget-boolean v10, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    if-eqz v10, :cond_3

    .line 435
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v3, v10, v11

    .line 436
    .local v3, dx:F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v5, v10, v11

    .line 437
    .local v5, dy:F
    mul-float v10, v3, v3

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Ledu/nctu/e3/CurriculumActivity;->originalDist:F

    .line 438
    iput-boolean v12, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    goto/16 :goto_0

    .line 440
    .end local v3           #dx:F
    .end local v5           #dy:F
    :cond_3
    iget v10, p0, Ledu/nctu/e3/CurriculumActivity;->originalDist:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    .line 441
    iput-boolean v13, p0, Ledu/nctu/e3/CurriculumActivity;->firstTouch:Z

    goto/16 :goto_0

    .line 443
    :cond_4
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v4, v10, v11

    .line 444
    .local v4, dx2:F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v6, v10, v11

    .line 445
    .local v6, dy2:F
    mul-float v10, v4, v4

    mul-float v11, v6, v6

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 446
    .local v2, dist:F
    iget v10, p0, Ledu/nctu/e3/CurriculumActivity;->originalDist:F

    div-float v9, v2, v10

    .line 447
    .local v9, rate:F
    iput v2, p0, Ledu/nctu/e3/CurriculumActivity;->originalDist:F

    .line 448
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    invoke-virtual {v10}, Ledu/nctu/e3/helpers/UnScrollableGridView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    const/high16 v11, 0x40e0

    div-float/2addr v10, v11

    float-to-int v10, v10

    mul-int/lit8 v8, v10, 0x7

    .line 449
    .local v8, newWidth:I
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    invoke-virtual {v10}, Ledu/nctu/e3/helpers/UnScrollableGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    const/high16 v11, 0x4180

    div-float/2addr v10, v11

    float-to-int v10, v10

    mul-int/lit8 v7, v10, 0x10

    .line 450
    .local v7, newHeight:I
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->datebarHolder:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Ledu/nctu/e3/CurriculumActivity;->datebarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    invoke-direct {v11, v8, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->timebarHolder:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Ledu/nctu/e3/CurriculumActivity;->timebarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    invoke-direct {v11, v12, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v10, p0, Ledu/nctu/e3/CurriculumActivity;->curriculum:Ledu/nctu/e3/helpers/UnScrollableGridView;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Ledu/nctu/e3/helpers/UnScrollableGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 427
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setProgressBarIndeterminateVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 471
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ledu/nctu/e3/CurriculumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 472
    return-void
.end method
