.class Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HomeworksActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/HomeworksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/HomeworksActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/HomeworksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

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
    .line 183
    if-nez p2, :cond_1

    .line 184
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local p1
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 186
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 187
    .restart local p1
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 188
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 189
    .restart local p1
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 190
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x4

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 195
    if-nez p2, :cond_0

    .line 196
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    .line 208
    :goto_0
    return-object v0

    .line 198
    .restart local p1
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 199
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 201
    .restart local p1
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 202
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 204
    .restart local p1
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 205
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 208
    .restart local p1
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 179
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
    .line 227
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 221
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 214
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 215
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 231
    const-string v0, "wait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v0, "peer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 235
    :cond_2
    const-string v0, "overdue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 237
    :cond_3
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Ledu/nctu/e3/HomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/HomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/HomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
