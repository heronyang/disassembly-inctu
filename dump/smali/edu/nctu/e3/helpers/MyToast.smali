.class public Ledu/nctu/e3/helpers/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 7
    .parameter "context"
    .parameter "msg"
    .parameter "duration"

    .prologue
    const/4 v6, 0x0

    .line 15
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 17
    .local v1, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090070

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 18
    .local v2, msgText:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 20
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x11

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 21
    invoke-virtual {v3, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 22
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 23
    return-object v3
.end method
