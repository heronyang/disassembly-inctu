.class Ledu/nctu/e3/AddReplyActivity$FileInformation;
.super Ljava/lang/Object;
.source "AddReplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInformation"
.end annotation


# instance fields
.field public Base64:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field final synthetic this$0:Ledu/nctu/e3/AddReplyActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/AddReplyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileName"
    .parameter "Base64"
    .parameter "ext"

    .prologue
    .line 244
    iput-object p1, p0, Ledu/nctu/e3/AddReplyActivity$FileInformation;->this$0:Ledu/nctu/e3/AddReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p2, p0, Ledu/nctu/e3/AddReplyActivity$FileInformation;->fileName:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Ledu/nctu/e3/AddReplyActivity$FileInformation;->Base64:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Ledu/nctu/e3/AddReplyActivity$FileInformation;->ext:Ljava/lang/String;

    .line 248
    return-void
.end method
