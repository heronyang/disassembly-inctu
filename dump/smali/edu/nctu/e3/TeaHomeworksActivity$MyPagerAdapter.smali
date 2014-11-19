.class Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TeaHomeworksActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/TeaHomeworksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/TeaHomeworksActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/TeaHomeworksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

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
    .line 184
    if-nez p2, :cond_1

    .line 185
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local p1
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 187
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 188
    .restart local p1
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 189
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 190
    .restart local p1
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 191
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x4

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 196
    if-nez p2, :cond_0

    .line 197
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout0:Landroid/widget/LinearLayout;

    .line 209
    :goto_0
    return-object v0

    .line 199
    .restart local p1
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 200
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout1:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 202
    .restart local p1
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 203
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout2:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 205
    .restart local p1
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 206
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->linearLayout3:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 209
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
    .line 180
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
    .line 228
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 222
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 215
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 216
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 232
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v0, "wait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 236
    :cond_2
    const-string v0, "finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 238
    :cond_3
    const-string v0, "notice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Ledu/nctu/e3/TeaHomeworksActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/TeaHomeworksActivity;

    iget-object v0, v0, Ledu/nctu/e3/TeaHomeworksActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
