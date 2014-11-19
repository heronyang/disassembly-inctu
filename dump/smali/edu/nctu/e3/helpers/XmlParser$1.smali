.class Ledu/nctu/e3/helpers/XmlParser$1;
.super Ljava/lang/Object;
.source "XmlParser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/nctu/e3/helpers/XmlParser;->showTimeoutDialog(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/helpers/XmlParser;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ledu/nctu/e3/helpers/XmlParser;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/helpers/XmlParser$1;->this$0:Ledu/nctu/e3/helpers/XmlParser;

    iput-object p2, p0, Ledu/nctu/e3/helpers/XmlParser$1;->val$context:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ledu/nctu/e3/helpers/XmlParser$1;->val$context:Landroid/content/Context;

    const-class v2, Ledu/nctu/e3/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Ledu/nctu/e3/helpers/XmlParser$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
