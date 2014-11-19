.class Ledu/nctu/e3/helpers/XmlParser$2;
.super Ljava/lang/Object;
.source "XmlParser.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$ab:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Ledu/nctu/e3/helpers/XmlParser;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/nctu/e3/helpers/XmlParser$2;->this$0:Ledu/nctu/e3/helpers/XmlParser;

    iput-object p2, p0, Ledu/nctu/e3/helpers/XmlParser$2;->val$ab:Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$2;->val$ab:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 143
    return-void
.end method
