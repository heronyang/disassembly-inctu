.class Ledu/nctu/e3/ContactUsActivity$1;
.super Ljava/lang/Object;
.source "ContactUsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/ContactUsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/ContactUsActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ContactUsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/ContactUsActivity$1;->this$0:Ledu/nctu/e3/ContactUsActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 58
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$1;->this$0:Ledu/nctu/e3/ContactUsActivity;

    const-string v1, "1"

    iput-object v1, v0, Ledu/nctu/e3/ContactUsActivity;->replyMethodStr:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$1;->this$0:Ledu/nctu/e3/ContactUsActivity;

    iget-object v0, v0, Ledu/nctu/e3/ContactUsActivity;->contactInformation:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$1;->this$0:Ledu/nctu/e3/ContactUsActivity;

    const-string v1, "3"

    iput-object v1, v0, Ledu/nctu/e3/ContactUsActivity;->replyMethodStr:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Ledu/nctu/e3/ContactUsActivity$1;->this$0:Ledu/nctu/e3/ContactUsActivity;

    iget-object v0, v0, Ledu/nctu/e3/ContactUsActivity;->contactInformation:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
