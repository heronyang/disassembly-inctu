.class Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CourseListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/CourseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ledu/nctu/e3/CourseListActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/CourseListActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->lists:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p1, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v1, "\u6559\u5e2b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->lists:Ljava/util/ArrayList;

    iget-object v1, p1, Ledu/nctu/e3/CourseListActivity;->teaCourseList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p1, Ledu/nctu/e3/CourseListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p1, Ledu/nctu/e3/CourseListActivity;->teaCourseList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 110
    :cond_0
    iget-object v0, p1, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v1, "\u52a9\u6559"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->lists:Ljava/util/ArrayList;

    iget-object v1, p1, Ledu/nctu/e3/CourseListActivity;->taCourseList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p1, Ledu/nctu/e3/CourseListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p1, Ledu/nctu/e3/CourseListActivity;->taCourseList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 114
    :cond_1
    iget-object v0, p1, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v1, "\u4fee\u8ab2\u751f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Ledu/nctu/e3/CourseListActivity;->coursePositionStatus:Ljava/lang/String;

    const-string v1, "\u65c1\u807d\u751f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    :cond_2
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->lists:Ljava/util/ArrayList;

    iget-object v1, p1, Ledu/nctu/e3/CourseListActivity;->stuCourseList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p1, Ledu/nctu/e3/CourseListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p1, Ledu/nctu/e3/CourseListActivity;->stuCourseList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 119
    :cond_3
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 135
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 139
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->lists:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 129
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 158
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 152
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 145
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 146
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 162
    iget-object v0, p0, Ledu/nctu/e3/CourseListActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/CourseListActivity;

    iget-object v0, v0, Ledu/nctu/e3/CourseListActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 163
    return-void
.end method
