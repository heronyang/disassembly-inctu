.class Ledu/nctu/e3/SendMailActivity$4;
.super Ljava/lang/Object;
.source "SendMailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/SendMailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/SendMailActivity;

.field private final synthetic val$temp:[Z


# direct methods
.method constructor <init>(Ledu/nctu/e3/SendMailActivity;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iput-object p2, p0, Ledu/nctu/e3/SendMailActivity$4;->val$temp:[Z

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 197
    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->val$temp:[Z

    invoke-virtual {v2}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, v3, Ledu/nctu/e3/SendMailActivity;->ccsChecks:[Z

    .line 198
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->copies:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->ccsMail:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->ccsChecks:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 214
    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->ccsChecks:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->copies:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v4, v4, Ledu/nctu/e3/SendMailActivity;->members:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    if-ge v0, v2, :cond_2

    .line 204
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, v2, Ledu/nctu/e3/SendMailActivity;->ccsMail:Ljava/util/ArrayList;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->teachers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "EMail"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    .line 206
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    sub-int v1, v0, v2

    .line 207
    .local v1, j:I
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, v2, Ledu/nctu/e3/SendMailActivity;->ccsMail:Ljava/util/ArrayList;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->students:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "EMail"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    .end local v1           #j:I
    :cond_3
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    .line 209
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    sub-int v2, v0, v2

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    sub-int v1, v2, v3

    .line 210
    .restart local v1       #j:I
    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, v2, Ledu/nctu/e3/SendMailActivity;->ccsMail:Ljava/util/ArrayList;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$4;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->students:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "EMail"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
