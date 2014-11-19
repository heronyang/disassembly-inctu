.class Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MaterialsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MaterialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/MaterialsActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/MaterialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

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
    .line 131
    if-nez p2, :cond_1

    .line 132
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->lecturesList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local p1
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 134
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->referencesList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 139
    if-nez p2, :cond_0

    .line 140
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->lecturesList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->lecturesList:Landroid/widget/ListView;

    .line 146
    :goto_0
    return-object v0

    .line 142
    .restart local p1
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 143
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->referencesList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->referencesList:Landroid/widget/ListView;

    goto :goto_0

    .line 146
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 127
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
    .line 165
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 159
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 152
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 153
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 169
    const-string v0, "lecture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "reference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Ledu/nctu/e3/MaterialsActivity$MyPagerAdapter;->this$0:Ledu/nctu/e3/MaterialsActivity;

    iget-object v0, v0, Ledu/nctu/e3/MaterialsActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
