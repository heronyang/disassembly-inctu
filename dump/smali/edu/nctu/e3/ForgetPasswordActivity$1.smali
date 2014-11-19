.class Ledu/nctu/e3/ForgetPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgetPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/ForgetPasswordActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/ForgetPasswordActivity;

.field private final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Ledu/nctu/e3/ForgetPasswordActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/ForgetPasswordActivity$1;->this$0:Ledu/nctu/e3/ForgetPasswordActivity;

    iput-object p2, p0, Ledu/nctu/e3/ForgetPasswordActivity$1;->val$result:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    new-instance v0, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;

    iget-object v1, p0, Ledu/nctu/e3/ForgetPasswordActivity$1;->this$0:Ledu/nctu/e3/ForgetPasswordActivity;

    invoke-direct {v0, v1}, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;-><init>(Ledu/nctu/e3/ForgetPasswordActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/nctu/e3/ForgetPasswordActivity$1;->val$result:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/nctu/e3/ForgetPasswordActivity$ForgetPasswordTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method
