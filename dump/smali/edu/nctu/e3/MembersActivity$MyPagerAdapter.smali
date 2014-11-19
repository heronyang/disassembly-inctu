.class Ledu/nctu/e3/MembersActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MembersActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/MembersActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/MembersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 141
    if-nez p2, :cond_1

    .line 142
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->teacherList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local p1
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 144
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->studentList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 145
    .restart local p1
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 146
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->taList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 151
    if-nez p2, :cond_0

    .line 152
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->teacherList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->teacherList:Landroid/widget/ListView;

    .line 161
    :goto_0
    return-object v0

    .line 154
    .restart local p1
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 155
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->studentList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->taList:Landroid/widget/ListView;

    goto :goto_0

    .line 157
    .restart local p1
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 158
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->taList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->studentList:Landroid/widget/ListView;

    goto :goto_0

    .line 161
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 137
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
    .line 180
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 174
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 167
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 168
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 184
    const-string v0, "teacher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, "ta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "student"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
